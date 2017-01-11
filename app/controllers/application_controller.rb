class ApplicationController < ActionController::Base
  #before_action :authenticate_user! <-- or something to that effect
  protect_from_forgery with: :exception
end
