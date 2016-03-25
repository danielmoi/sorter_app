class SessionController < ApplicationController
  # display login page
  def new
  end

  # handle submit from login page
  def create
    user = User.find_by :email => params[:email]

    # if a user, with that email, is in the DB
    # then apply the authenticate method
    # if successful authentication...
    if user.present? && user.authenticate(params[:password])

      # set the user_id in session hash to the user's id
      session[:user_id] = user.id
      # then go to home page (with that id saved in session)
      redirect_to root_path

    # if user isn't in DB or authentication fails...
    else
      # set :error in flash to this string
      flash[:error] = 'Invalid email or password' # deliberate ambiguity
      # then go to login page
      redirect_to login_path
    end
  end


end
