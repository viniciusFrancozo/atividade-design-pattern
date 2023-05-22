Rails.application.routes.draw do
  resources :ratings
  resources :directors
  resources :movie_casts
  resources :actors
  resources :movies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
