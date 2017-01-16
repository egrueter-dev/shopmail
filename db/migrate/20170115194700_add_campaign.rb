class AddCampaign < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :name
    end
  end
end
