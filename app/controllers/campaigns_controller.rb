class CampaignsController < ApplicationController
  before_action :find_campaign, only: [:edit, :update]

  def index
    campaigns = Campaign.where(shop_id: session[:shopify])
    redirect_to new_campaign_path if campaigns.empty?
    @campaign = campaigns.first
  end

  def edit; end

  def update
    @campaign.name = params[:name]
    @campaign.save
    redirect_to campaigns_path
  end

  def new
    @campaign = Campaign.new
  end

  def create
    campaign = Campaign.new(
      name: params[:campaign][:name],
      shop_id: session[:shopify]
    )
    campaign.save
    redirect_to campaigns_path
  end

  private

  def find_campaign
    @campaign = Campaign.find(params[:id])
  end
end
