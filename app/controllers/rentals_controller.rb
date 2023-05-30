class RentalsController < ApplicationController
  before_action :set_accessory, only: :create

  def create
    @rental = Rental.new(rental_params)
    @rental.accessory = @accessory
    @rental.renter = current_user
    @rental.status = "Pending"
    @rental.final_price = (@rental.end_date - @rental.start_date) * @rental.accessory.price_per_day
    @rental.save
    redirect_to rentals_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  def set_accessory
    @accessory = Accessory.find(params[:accessory_id])
  end
end
