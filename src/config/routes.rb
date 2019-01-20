Rails.application.routes.draw do
<<<<<<< HEAD
  resources :users
  resources :price_lists
  resources :passengers
  resources :customers
=======
  resources :car_rental_contracts
>>>>>>> CRUD/19012019/car_rental_contracts
  resources :car_brands
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

end
