class AddNameToEmail < ActiveRecord::Migration[5.0]
  def change
    add_column :email_messages, :name, :string
  end
end
