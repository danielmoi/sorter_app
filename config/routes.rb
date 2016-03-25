# == Route Map
#
#   Prefix Verb  URI Pattern          Controller#Action
#     root GET   /                    pages#home
#    users GET   /users(.:format)     users#index
#          POST  /users(.:format)     users#create
# new_user GET   /users/new(.:format) users#new
#     user PATCH /users/:id(.:format) users#update
#          PUT   /users/:id(.:format) users#update
#   signup GET   /signup(.:format)    users#new
#    login GET   /login(.:format)     session#new
#

Rails.application.routes.draw do

  root :to => 'pages#home'

  ## User routes
  resources :users, :only => [:new, :create, :index, :update]
  get '/signup' => 'users#new'

  ## Session routes
  # Display login view
  get '/login' => 'session#new'

  # Receive login submit
  post '/login' => 'session#create'


end
