class CreateMessageToUsers < ActiveRecord::Migration
  def change
    create_table :message_to_users do |t|
      t.date :date_of_sending
	  add_column :users, :message_to_users_id, :integer

      t.timestamps
    end
  end
end
