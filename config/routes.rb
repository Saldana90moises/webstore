Rails.application.routes.draw do

  root to: "home#index"
  #root to: "home#index"
  resources :stores
  resources :products
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
