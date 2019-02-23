Rails.application.routes.draw do
  resources :members
  resources :users
  resources :price_lists
  resources :passengers
  resources :customers
  resources :car_rental_contracts
  resources :investment_contracts
  resources :drivers
  resources :user_types
  resources :cars
  resources :car_models
  resources :car_brands
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
