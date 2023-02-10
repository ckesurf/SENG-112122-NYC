class ItemsController < ApplicationController
  def index 
    items = Item.all 
    render json: items
  end

  def destroy
    # does this item belong to you?
    # if item.user_id == session[:user_id]
    item = Item.find(params[:id])
    if item.user_id == session[:user_id]
      #   delete this item
      item.destroy 
      head :no_content
    else 
      # otherwise, getouttahere!
      return render json: { error: "Hey! This item doesn't belong to you!" }, status: :unauthorized
    end
  end
end
