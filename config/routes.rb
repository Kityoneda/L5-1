Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  # get 'tops/main'
  # get 'tweets/index'
  # get 'tweets/new'
  # get 'tweets/create'
  # get 'tweets/destroy'
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # get 'users/destroy'
 resources :tweets
 resources :likes
 resources :users, only: [:index, :new, :create, :destroy]
 root 'users#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
