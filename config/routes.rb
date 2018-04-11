Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#index'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
  }
  #devise_for :users
  #resources 'users'
  
  get 'profile/:id' => 'users#new'
  patch 'profile/:id' => 'users#update'
  put 'profile/:id' => 'users#update'
  resources 'requests'

  #get '/login', to: 'sessions#new'
  #post '/login', to: 'sessions#create'
  #delete '/logout', to: 'sessions#destroy'
  
  
end
