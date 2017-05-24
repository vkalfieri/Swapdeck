Rails.application.routes.draw do
  devise_for :users
  resources :listings
  resources :subcategories
  resources :deliveries
  resources :categories
  resources :profiles
  resources :trades

  
  root 'pages#home'
end
