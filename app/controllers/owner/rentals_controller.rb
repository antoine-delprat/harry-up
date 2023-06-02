class Owner::RentalsController < ApplicationController
  before_action :set_rental, only: [:accept, :decline]

  def index
    @rentals_pending = Rental.includes(:accessory).where(accessories: { owner: current_user }, status: "Pending")
    @rentals_accepted = Rental.includes(:accessory).where(accessories: { owner: current_user }, status: "Accepted")
    @rentals_rejected = Rental.includes(:accessory).where(accessories: { owner: current_user }, status: "Rejected")
    @rentals = @rentals_pending + @rentals_accepted + @rentals_rejected
  end

  def accept
    @rental.update(status: "Accepted")
    redirect_to owner_rentals_path
  end

  def decline
    @rental.update(status: "Rejected")
    redirect_to owner_rentals_path
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
