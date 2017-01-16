class AddReferenceToEmailMessage < ActiveRecord::Migration[5.0]
  def change
    add_reference :email_messages, :campaign, foreign_key: true
  end
end
