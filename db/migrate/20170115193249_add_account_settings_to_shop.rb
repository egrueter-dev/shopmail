class AddAccountSettingsToShop < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :from_email, :string
    add_column :shops, :first_name, :string
    add_column :shops, :last_name, :string
    add_column :shops, :phone, :string
  end
end
