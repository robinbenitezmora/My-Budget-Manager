Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  get 'clusters/index'
  get 'clusters/show'
  get 'clusters/new'
  get 'clusters/edit'
  get 'clusters/create'
  get 'clusters/update'
  get 'clusters/destroy'
  get 'starts/index'
  get 'starts/show'
  get 'starts/new'
  get 'starts/edit'
  get 'starts/create'
  get 'starts/update'
  get 'starts/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
