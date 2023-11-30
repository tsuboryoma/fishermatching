Rails.application.routes.draw do
  get 'top/main'
  get 'top/login'
  post '/top/login', to: 'top#login'
  get 'top/logout'
  resources :users
  resources :user_profiles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #root "users#index"
  #root 'fishing_trips#index'
  root 'top#main'
  resources :fishing_trips, only: [:new, :create, :index]
  
end
