Rails.application.routes.draw do
  get 'splashs/index'
  devise_for :users
  # resources :associations
  # resources :clusters
  # resources :users
  # resources :starts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :splashs, only: [:index]
    resources :clusters, only: [:index, :new, :create] do
      resources :starts, only: [:new, :create]
      resources :associations, only: [:index]
    end

    resources :starts, only: [:new, :create]

  # Defines the root path route ("/")
  root "clusters#index"
end
