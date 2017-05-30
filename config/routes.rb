Rails.application.routes.draw do
  devise_for :users
  resources :listings do
    get 'search', to: 'listings#search', on: :collection
  end
  resources :subcategories
  resources :deliveries
  resources :categories
  resources :profiles
  resources :trades


  root 'pages#home'
end
