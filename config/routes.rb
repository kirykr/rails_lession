Rails.application.routes.draw do
  resources :articles
  resources :categories do
    resources :articles, only: :index
  end
  devise_for :users, path: 'auth'
  root to: 'home#index'
  
  namespace :admin do
    get '/dashboard' => 'dashboard#index'
    resources :users, except: [:show]
  end
end
