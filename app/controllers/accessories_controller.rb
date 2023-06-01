class AccessoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @accessories = Accessory.all
  end

  def show
    @accessory = Accessory.find(params[:id])
    @rental = Rental.new
  end
end
