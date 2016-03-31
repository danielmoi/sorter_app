class GraphsController < ApplicationController
  def index
    @bookmark_total = @current_user.bookmarks.size
  end

  def data
    respond_to do |format|
      format.json {
        render :json => [1,2,3,4,5]
      }
    end
  end

  def data2

    labels = []
    counts = []


    User.all.each do |user|
      labels << user.email
      counts << user.categories.size
    end

    my_data = {
      :labels => labels,
      :counts => counts
    }

    respond_to do |format|
      format.json {
        render :json => my_data
      }
    end
  end

  def data_current_user
    categories = {
      :labels => [],
      :counts => []
    }
    @current_user.categories.each do |c|
      categories[:labels] << c.name
      categories[:counts] << c.bookmarks.size
    end
    respond_to do |format|
      format.json {
        render :json => categories
      }
    end
  end

end
