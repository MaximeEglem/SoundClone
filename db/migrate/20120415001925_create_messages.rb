class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
	  t.string :message
	  add_column :message_to_user, :message_id, :integer
		
      t.timestamps
    end
  end
end
