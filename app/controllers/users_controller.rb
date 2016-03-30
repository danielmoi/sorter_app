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
    req = Cloudinary::Uploader.upload( user_params[:image_url])
    @user.image_url = req["url"]

    if @user.save

      session[:user_id] = @user.id

      # Create new category for new user_id
      @user.categories.create :name => "Uncategorised"

      # category = Category.new :name => "Uncategorised"
      # category.user_id = @user.id
      # category.save

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
    params.require(:user).permit(:email, :password, :password_confirmation, :image_url, :name)
  end

end
