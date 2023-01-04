Rails.application.routes.draw do
  resources :associations
  resources :clusters
  resources :users
  resources :starts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
