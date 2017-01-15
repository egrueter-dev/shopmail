Rails.application.routes.draw do

  resources :settings, only: [:index]
  resources :campaigns
  resources :account_settings, only: [:index]
  resources :unsubscribers, only: [:index]

  root :to => 'home#index'

  mount ShopifyApp::Engine, at: '/'
end
