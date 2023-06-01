class Owner::RentalsController < ApplicationController

  def index
    @rentals = Rental.includes(:accessory).where(accessories: { owner: current_user })
  end
end
