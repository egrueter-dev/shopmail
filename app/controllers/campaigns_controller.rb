class CampaignsController < ApplicationController
  before_action :find_campaign, only: [:edit, :update]

  def index
    campaigns = Campaign.where(shop_id: session[:shopify])
    if campaigns.empty?
      redirect_to new_campaign_path if campaigns.empty?
    else
      campaign = campaigns.first
      redirect_to campaign
    end
  end

  def show
    @campaign = Campaign.find(params[:id])
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
    redirect_to campaign
  end

  private

  def find_campaign
    @campaign = Campaign.find(params[:id])
  end
end
