class EmailMessage < ActiveRecord::Base
  belongs_to :campaign
  validates :campaign_id, presence: true
end
