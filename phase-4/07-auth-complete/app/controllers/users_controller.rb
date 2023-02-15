class UsersController < ApplicationController

    def index 
        render json: User.all
    end

    def create 
        user = User.create!(user_params) 
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        # user = User.find(params[:id])
        if session[:user_id]
            user = User.find(session[:user_id])
            render json: user
        else
            render json: {error: 'not logged in'}, status: 404
        end

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
