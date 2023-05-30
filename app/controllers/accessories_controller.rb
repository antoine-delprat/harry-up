class AccessoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @accessory = Accessory.find(params[:id])
    @rental = Rental.new
  end
end
