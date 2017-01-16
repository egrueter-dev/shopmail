class AddEmailMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :email_messages do |t|
      t.date :date_to_send
      t.timestamps
    end
  end
end
