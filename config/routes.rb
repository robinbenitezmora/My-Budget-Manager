Rails.application.routes.draw do
  get 'associations/index'
  get 'associations/show'
  get 'associations/new'
  get 'associations/edit'
  get 'associations/create'
  get 'associations/update'
  get 'associations/destroy'
  resources :clusters
  resources :users
  resources :starts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
