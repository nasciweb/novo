Rails.application.routes.draw do
  get 'messages/new'
  get 'messages/create'
  resources :municips
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
