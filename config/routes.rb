Rails.application.routes.draw do

  ##### Static pages routes #####
  root :to => 'pages#home'
  get '/about' => 'pages#about'
  get '/help' => 'pages#help'

  ##### User routes #####
  get '/users/edit' => 'users#edit'
  resources :users, :only => [:new, :create, :index, :update, :show]
  get '/read' => 'users#read'
  get '/signup' => 'users#new'
  # get '/users/profile' => 'users#show'
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

  ##### Favourites #####
  get '/favourites' => 'favourites#index'

  ##### Graph routes #####
  get '/graphs' => 'graphs#index'
  get '/graphs/data', :defaults => { :format => 'json' }
  get '/graphs/data2', :defaults => { :format => 'json' }


end
