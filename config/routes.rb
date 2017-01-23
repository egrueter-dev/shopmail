Rails.application.routes.draw do
  resources :campaigns do
    resources :email_messages
  end

  resource :settings, only: [:show, :update, :edit]
  resources :unsubscribers, only: [:index]

  root :to => 'home#index'

  mount ShopifyApp::Engine, at: '/'
end
