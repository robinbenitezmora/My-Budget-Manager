Rails.application.routes.draw do
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
