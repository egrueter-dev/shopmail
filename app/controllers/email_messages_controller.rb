class EmailMessagesController < ApplicationController
  def new
    @email_message = EmailMessage.new
    @campaign = Campaign.find(params[:campaign_id])
  end

  def create
    # TODO: Add strong params
    em = EmailMessage.new(
      name: params[:email_message][:name],
      campaign_id: params[:campaign_id]
    )
    em.save
    redirect_to campaign_path(params[:campaign_id])
  end

  def show
    @email_message = EmailMessage.find(params[:id])
  end
end
