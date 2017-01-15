class AddUserRefToCampaigns < ActiveRecord::Migration[5.0]
  def change
    add_reference :campaigns, :shop, foreign_key: true
  end
end
