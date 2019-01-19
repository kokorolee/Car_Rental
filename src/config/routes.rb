Rails.application.routes.draw do
  resources :drivers
  resources :car_brands
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

end
