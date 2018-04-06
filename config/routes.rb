Rails.application.routes.draw do
  devise_for :users
  resources 'users'
  resources 'requests'
  root 'pages#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
