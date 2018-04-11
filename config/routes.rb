Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
  }
  #devise_for :users
  resources 'users'
  resources 'requests'
  root 'pages#index'
  #get '/login', to: 'sessions#new'
  #post '/login', to: 'sessions#create'
  #delete '/logout', to: 'sessions#destroy'
  
  
end
