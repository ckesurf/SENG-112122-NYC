class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    byebug
    render json: User.find(params[:id])
  end

  
end
