Rails.application.routes.draw do
  resources :payloads
  get "merchants/secret_menu"
  resources :merchants do
    resources :locations
  end

  # post 'grubhub_webhook' => 'grubhub#webhook'
  post 'grubhub_webhook' => 'payloads#receive'

  resources :clients
end
