class Owner::AccessoriesController < ApplicationController
  before_action :set_owner, only: %i[create]

  def index
    @accessories = current_user.accessories
  end

  def new
    @accessory = Accessory.new
  end

  def create
    @accessory = Accessory.new(accessory_params)
    @accessory.owner = @owner
    if @accessory.save
      redirect_to owner_accessories_path(@accessory.owner)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_owner
    @owner = current_user
  end

  def accessory_params
    params.require(:accessory).permit(:owner_id, :name, :detail, :price_per_day, :category, :photo)
  end
end
