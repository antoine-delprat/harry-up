class AccessoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @accessories = Accessory.all
    if params[:query].present?
      sql_subquery = <<~SQL
      accessories.name ILIKE :query
      OR accessories.category ILIKE :query
    SQL
      @accessories = @accessories.where("name ILIKE ?", "%#{params[:query]}%")
    elsif params[:category].present?
      @accessories = @accessories.where(category: params[:category])
    end
  end


  def show
    @accessory = Accessory.find(params[:id])
    @rental = Rental.new
  end
end
