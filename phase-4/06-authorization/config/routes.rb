Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users, only: [:create, :destroy, :index]
  post '/signup', to: 'users#create'
  post "/login", to: "sessions#create"

  get '/me', to: 'users#show'
  delete '/logout', to: 'sessions#destroy'
end

