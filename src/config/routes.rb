Rails.application.routes.draw do
  scope :admin_site do
    resources :user_admins
    resources :members
    resources :users
    resources :price_lists
    resources :passengers
    resources :customers
    resources :drivers
    resources :cars
    resources :car_models
    resources :car_brands
    resources :investments
    resources :car_rentals
  end
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'
end
