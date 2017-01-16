class RemoveShopsReferenceFromCampaigns < ActiveRecord::Migration[5.0]
  def change
    remove_reference :campaigns, :shops, index: true
  end
end
