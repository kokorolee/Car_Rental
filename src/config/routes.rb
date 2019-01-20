Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  resources :users
  resources :price_lists
  resources :passengers
  resources :customers
=======
  resources :car_rental_contracts
>>>>>>> CRUD/19012019/car_rental_contracts
=======
  resources :investment_contracts
>>>>>>> CRUD/19012019/investment_contracts
=======
  resources :drivers
>>>>>>> CRUD/19012019/drivers
=======
  resources :user_types
>>>>>>> CRUD/19012019/User_types
  resources :car_brands
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

end
