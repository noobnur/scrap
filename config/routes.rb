Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'
  root 'pages#home'

  resources :products
  get '/about', to: 'pages#about'
  get '/search', to: 'pages#home'
  post '/search', to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
