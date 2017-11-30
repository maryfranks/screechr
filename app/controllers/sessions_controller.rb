class SessionsController < ApplicationController

  def new
    @user = User.new
    @user.save
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    end
  end

end
