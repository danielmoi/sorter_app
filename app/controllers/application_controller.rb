class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # call fetch_user before EVERY ACTION in the entire app
  before_action :fetch_user


  # private method, that stores the info for the successful login
  private
  def fetch_user
    # this is better than User.find, because if there isn't a @current_user (ie. login has failed), then it won't crash the server
    # we can set @current_user = nil
    # this is the `non-crashy` way (no error page) sent by server

    # 1. set @current_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?

    # 2. clean up if the above didn't work
    session[:user_id] = nil unless @current_user.present?
  end
end
