class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now[:notice] = 'Account successfully created!'
      redirect_to user_path
    else
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end
  end

  def update

  end

  def edit

  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
  end

end
