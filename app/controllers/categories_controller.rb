class CategoriesController < ApplicationController
  def new
  end

  def index
    @user = @current_user
  end

  def show
    @user = @current_user
    @category = Category.find params[:id]

  end

  def edit
  end

  def delete
  end


end
