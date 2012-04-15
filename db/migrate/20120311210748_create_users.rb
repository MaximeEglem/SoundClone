class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email	  
	  add_column :message_to_users, :user_id, :integer

      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end
end
