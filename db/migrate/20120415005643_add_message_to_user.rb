class AddMessageToUser < ActiveRecord::Migration
  def change
    add_column :message_to_users, :message_id, :integer
	add_column :message_to_users, :user_id, :integer
  end
end
