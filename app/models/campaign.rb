class Campaign < ActiveRecord::Base
  belongs_to :shop
  has_many :email_messages
end
