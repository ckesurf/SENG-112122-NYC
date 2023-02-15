Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users, only: [:create, :destroy, :index]
  resources :items, only: [:index, :destroy]
  post '/signup', to: 'users#create'
  post "/login", to: "sessions#create"
  #   session[:user_id]  = 5

  get '/me', to: 'users#show'
  delete '/logout', to: 'sessions#destroy'
end

