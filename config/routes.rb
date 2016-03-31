Rails.application.routes.draw do

  ##### Static pages routes #####
  root :to => 'pages#home'
  get '/about' => 'pages#about'
  get '/help' => 'pages#help'

  ##### User routes #####
  get '/users/edit' => 'users#edit'
  resources :users, :only => [:new, :create, :index, :update, :show] do
    resources :bookmarks
  end
  get '/read' => 'users#read'
  get '/signup' => 'users#new'
  get '/favourites' => 'users#favourites'
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

  ##### Graph routes #####
  get '/graphs' => 'graphs#index'
  get '/graphs/data', :defaults => { :format => 'json' }
  get '/graphs/data2', :defaults => { :format => 'json' }
  get '/graphs/data_current_user', :defaults => { :format => 'json' }


end
