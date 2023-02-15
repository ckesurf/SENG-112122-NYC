class ItemsController < ApplicationController
  def index 
    items = Item.all 
    render json: items
  end

  def destroy
    item = Item.find(params[:id])
    # if you own this item
    # items user id
    # item.user_id 
    # logged in user's id
    # current_user.id 
    # session[:user_id]
    byebug
    if item.user_id == current_user.id
      #   then lets destroy this item
      item.destroy 
      render json: item
    else 
      # otherwise,
      #   getouttahere!
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end
end
