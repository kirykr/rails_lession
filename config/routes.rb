Rails.application.routes.draw do
  resources :roles
  resources :articles, only: :index
  resources :categories do
    resources :articles, only: :index
  end
  devise_for :users, path: 'auth'
  root to: 'home#index'
  
  namespace :admin do
    get '/dashboard' => 'dashboard#index'
    resources :users
    resources :articles
    resources :categories, except: :show
  end
  get '/aboutus' => 'aboutus#index'
end
