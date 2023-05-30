class AccessoriesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  def index
    @accessories = Accessory.all
  end



end
