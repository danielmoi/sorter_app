require 'pry'

class BookmarksController < ApplicationController
  def index
    @user = @current_user
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    require 'open-uri'
    @bookmark = Bookmark.new bookmark_params
    @bookmark.user_id = @current_user.id

    doc = Nokogiri::HTML(open(@bookmark.url))
    title = doc.css('title').text
    @bookmark.title = title

    description = doc.css('meta[name=description]')[0]['content']
    @bookmark.description = description if description.any?

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

end
