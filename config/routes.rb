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

  ##### User routes #####
  resources :users, :only => [:new, :create, :index, :update]
  get '/signup' => 'users#new'
  get '/users/edit' => 'users#edit'
  # get '/bookmarks' => 'users#index'

  ##### Session routes #####
  # Receive request for login view
  get '/login' => 'session#new'

  # Receive request from login form submit
  post '/login' => 'session#create'

  # Receive request to logout
  delete '/login' => 'session#destroy'

  ##### Bookmarks routes #####
  resources :bookmarks

  ##### Categories routes #####
  resources :categories

end
