Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users

     resources :pages, only: [:index]

      resources :clusters, only: [:index, :new, :create] do
          resources :starts, only: [:new, :create]
          resources :associations, only: [:index]
      end

      resources :starts, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  # Defines the root path route ("/")
  root "clusters#index"
end