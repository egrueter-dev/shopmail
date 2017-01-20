class EmailMessagesController < ApplicationController
  def new
    @email_message = EmailMessage.new
  end

  def create
    binding.pry
    em = EmailMessage.new()
    em.name = params[:name]
    em.save
    redirect_to em
  end

  def show
    @email_message = EmailMessage.find(params[:id])
  end
end
