class CampaignsController < ApplicationController

  def index
    campaigns = Campaign.where(shop_id: session[:shopify])
    redirect_to new_campaign_path if campaigns.empty?
    @campaign = campaigns.first
  end

  def new
    @campaign = Campaign.new
  end

  def create
    campaign = Campaign.new(name: params[:name], shop_id: session[:shopify])
    campaign.save
    redirect_to campaigns_path
  end
end
