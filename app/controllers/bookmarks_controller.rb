class BookmarksController < ApplicationController

  before_action :protect_bookmarks, :only => [:edit, :update, :destroy]
  # the 4 actions that use params[:id]

  def index
    if params[:user_id]
      @user = User.find params[:user_id]
    else
      @user = @current_user
    end

  end

  def new
    @bookmark = Bookmark.new

    # Not sure why some users don't have @current_user
    if @current_user.categories.empty?
      @current_user.categories.create :name => "Uncategorised"
    end
    @bookmark.categories << @current_user.categories.first
  end

  def create
    if bookmark_params[:category_ids] == [""]
      flash[:error] = 'Must select a category'
      @bookmark = Bookmark.new bookmark_params
      render :new and return
    end

    require 'open-uri'
    @bookmark = Bookmark.new bookmark_params
    @bookmark.user_id = @current_user.id

    doc = Nokogiri::HTML(open(@bookmark.url))
    title = doc.css('title').text
    @bookmark.title = title

    description = doc.css('meta[name=description]')[0]['content'] if doc.css('meta[name=description]').any?
    @bookmark.description = description unless description.nil?

    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  def show
    @bookmark = Bookmark.find params[:id]
  end

  def edit
    @bookmark = Bookmark.find params[:id]
  end

  def update
    bookmark = Bookmark.find params[:id]
    bookmark.update bookmark_params
    redirect_to bookmarks_path
  end

  def destroy
    bookmark = Bookmark.find params[:id]
    bookmark.destroy
    redirect_to bookmarks_path
  end

  # can't visit these URLs
  private
  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :description, :is_favourite, :is_read, :category_ids => [])
  end

  def protect_bookmarks
    unless Bookmark.find(params[:id]).user_id == @current_user.id
      flash[:error] = "Please don't do that to bookmarks"
      redirect_to root_path
    end
  end

end
