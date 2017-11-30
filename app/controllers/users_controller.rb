class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def update
    @user = current_user
    @user.update(user_params)
  end

  def edit
    @user = current_user
  end

  def show
    @user = current_user
    # byebug
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
  end

end
