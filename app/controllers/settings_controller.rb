class SettingsController < ApplicationController
  before_action :fetch_shop, only: [:show, :update]

  def show
    @shop
    # Find the shop
    # Display it's data
    # Make editable
  end

  def update
    # update the shop
  end

  private

  def fetch_shop
   @shop =  Shop.find(session[:shopify])
  end
end
