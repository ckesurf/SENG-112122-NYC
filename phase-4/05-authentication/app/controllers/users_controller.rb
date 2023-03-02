class UsersController < ApplicationController

    def index 
        render json: User.all
    end

    def create 
        user = User.create!(user_params) 
        render json: user, status: :created
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def destroy 
        user = User.find(params[:id])
        user.destroy 
        head :no_content 
    end

private 

    def user_params
        params.permit(:username, :email, :password)
    end
end
