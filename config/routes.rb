Rails.application.routes.draw do
  resources :merchants do
    resources :locations
  end
  root 'homepage#index'
  get "secret_menu" => "homepage#menu_view"
  resources :payloads
  get "merchants/secret_menu"
  post 'order_validation' => 'payloads#order_validation'
  post 'grubhub_webhook' => 'payloads#receive'
  post 'order_update' => 'payloads#order_update'
  post 'delivery_update' => 'payloads#delivery_update'
  post 'merchant_pos_update' => 'payloads#merchant_pos_update'
  post 'menu_ingestion_update' => 'payloads#menu_ingestion_update'
  resources :clients
end