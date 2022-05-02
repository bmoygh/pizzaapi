Rails.application.routes.draw do
  get "merchants/secret_menu"
  resources :merchants do
    resources :locations
  end
  get 'webhooks/gh_inbound' => 'webhooks#get', as: :logs_webhooks
  post 'webhooks/gh_inbound' => 'webhooks#receive', as: :receive_webhooks

  resources :clients
end
