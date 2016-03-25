class UsersController < ApplicationController

  # render view for users/new
  def new
    @user = User.new
  end

  # receive data from users/new (the form)
  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end
  

  # can't visit these URLs
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :image)
  end

end
