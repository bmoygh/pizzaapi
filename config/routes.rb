Rails.application.routes.draw do

  resources :merchants do
    resources :locations
  end
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
