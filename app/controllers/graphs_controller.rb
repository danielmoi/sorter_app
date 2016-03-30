class GraphsController < ApplicationController
  def index
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

end
