class CreateAccessories < ActiveRecord::Migration[7.0]
  def change
    create_table :accessories do |t|
      t.references :owner, null: false, foreign_key: {to_table: :users}
      t.string :name
      t.text :detail
      t.integer :price_per_day
      t.string :category

      t.timestamps
    end
  end
end
