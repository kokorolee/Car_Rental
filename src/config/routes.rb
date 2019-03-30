Rails.application.routes.draw do
  scope :admin_site do
    resources :users
    resources :user_admins
    resources :customers
    resources :members
    resources :passengers
    resources :drivers
    resources :car_brands
    resources :car_models
    resources :cars
    # resources :price_lists
    resources :quantity_of_seats
    resources :investments
    resources :car_rentals
  end
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'
end
