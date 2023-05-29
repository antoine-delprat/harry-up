class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.references :renter, null: false, foreign_key: {to_table: :users}
      t.references :accessory, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :final_price

      t.timestamps
    end
  end
end
