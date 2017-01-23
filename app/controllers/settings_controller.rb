class SettingsController < ApplicationController
  before_action :fetch_shop, only: [:show, :update, :edit]

  def show; end

  def update
    # update the shop
  end

  def edit; end

  private

  def fetch_shop
   @shop =  Shop.find(session[:shopify])
  end
end
