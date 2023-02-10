class ItemsController < ApplicationController
  def index 
    items = Item.all 
    render json: items
  end

  def destroy
  end
end
