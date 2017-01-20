Rails.application.routes.draw do
  resources :campaigns do
    resources :email_messages
  end

  resources :settings, only: [:index]
  resources :account_settings, only: [:index]
  resources :unsubscribers, only: [:index]

  root :to => 'home#index'

  mount ShopifyApp::Engine, at: '/'
end
