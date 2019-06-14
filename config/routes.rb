Rails.application.routes.draw do
  resources :roles
  devise_for :users, path: 'auth'
  root to: 'home#index'
  
  namespace :admin do
    get '/dashboard' => 'dashboard#index'
    resources :users
  end
end
