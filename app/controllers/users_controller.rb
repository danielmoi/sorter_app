class UsersController < ApplicationController

  # render view for users/new
  def new
    @user = User.new
  end

  def read
    @user = @current_user
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

  def show
    @user = @current_user
  end

  # render view for edit profile
  def edit
    @user = @current_user
  end

  # handle edit form submission
  def update
    @user = @current_user
    if @user.update user_params
      redirect_to root_path
    else
      render :edit
    end
  end


  # can't visit these URLs
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :image)
  end

end
