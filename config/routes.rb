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


  root 'pages#splash'
  get 'pages/about' => "pages#about", :as => :pages_about
  get 'pages/contact' => "pages#contact", :as => :pages_contact
  get 'pages/home' => "pages#home", :as => :pages_home
end
