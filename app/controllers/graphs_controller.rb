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
    my_arr = []
    User.all.each do |user|
      # my_arr << [user.email, user.categories.size]
      my_arr << user.categories.size
    end

    respond_to do |format|
      format.json {
        render :json => my_arr
      }
    end
  end

end
