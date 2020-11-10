Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :enologo_vinos
  resources :enologos
  resources :vinos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
