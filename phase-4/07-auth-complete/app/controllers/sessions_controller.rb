class SessionsController < ApplicationController
  def create
    # when we log in,
    # we want to authenticate the user
    # if they're authenticated, "log them in", i.e., put their user id in the session[:user_id]
    # byebug
    logged_in_user = User.find_by(username: params[:username])
    session[:user_id] = logged_in_user.id
    render json: logged_in_user
  end

  def destroy
  end
end
