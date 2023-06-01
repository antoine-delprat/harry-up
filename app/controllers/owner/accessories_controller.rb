class Owner::AccessoriesController < ApplicationController
  def index
    @accessories = current_user.accessories
  end
end
