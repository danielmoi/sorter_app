# == Route Map
#
#      Prefix Verb URI Pattern            Controller#Action
# users_index GET  /users/index(.:format) users#index
#  users_edit GET  /users/edit(.:format)  users#edit
#   users_new GET  /users/new(.:format)   users#new
#        root GET  /                      pages#home
#

Rails.application.routes.draw do

  root :to => 'pages#home'

  # User routes
  resources :users, :only => [:new, :create, :index, :update]
  get '/signup' => 'users#new'

  # Session routes
  get '/login' => 'session#new'


end
