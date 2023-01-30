Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  # get all the users
  # get '/users', to: "users#index"
  # get '/users/:id', to: "users#show"

  # CRUD/HTTV verb 'route', to: "controller#method"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
