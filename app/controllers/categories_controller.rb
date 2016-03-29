class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    @category.user_id = @current_user.id
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    category = Category.find params[:id]
    category.update category_params
    redirect_to categories_path
  end

  def index
    @user = @current_user
  end

  def show
    @user = @current_user
    @category = Category.find params[:id]

  end

  def destroy
    category = Category.find params[:id]
    category.destroy
    redirect_to categories_path    
  end

  # helper methods
  private
  def category_params
    params.require(:category).permit(:name)
  end


end
