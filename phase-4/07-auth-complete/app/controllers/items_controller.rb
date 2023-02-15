class ItemsController < ApplicationController
  def index 
    items = Item.all 
    render json: items
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy 
    render json: item
  end
end
