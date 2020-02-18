Rails.application.routes.draw do
  # devise_for :users
  root 'products#index'
  resources :products, only: [:index, :new, :create]
  resources :useraddress, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
