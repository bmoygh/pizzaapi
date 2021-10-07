Rails.application.routes.draw do
  get "merchants/secret_menu"
  resources :merchants do
    resources :locations
  end
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
