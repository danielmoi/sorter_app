class BookmarksController < ApplicationController
  def index
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new bookmark_params
    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find params[:id]
  end

  def update
    bookmark = Bookmark.find params[:id]
    bookmark.update bookmark_params
    redirect_to bookmarks_path
  end

  # can't visit these URLs
  private
  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :description, :is_favourite, :is_unread)
  end

end
