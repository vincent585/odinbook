Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :posts
  resources :follows, only: %i[new create edit update destroy]
  resources :users, only: :index

  # Defines the root path route ("/")
  root 'posts#index'
end
