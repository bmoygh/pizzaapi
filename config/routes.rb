Rails.application.routes.draw do
  resources :payloads
  get "merchants/secret_menu"
  resources :merchants do
    resources :locations
  end

  # post 'grubhub_webhook' => 'grubhub#webhook'
  post 'grubhub_webhook' => 'payloads#receive'
  post 'order_update' => 'payloads#order_update'

  resources :clients
end
