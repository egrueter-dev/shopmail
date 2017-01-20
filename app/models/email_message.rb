class EmailMessage
  belongs_to :campaign
  attr_accessor :name, :campaign_id, :date_to_send
  validates :name, presence: true
end
