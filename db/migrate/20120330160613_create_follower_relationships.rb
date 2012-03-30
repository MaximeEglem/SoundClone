class CreateRelationships < ActiveRecord::Migration
  def self.up
    create_table :follower_relationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
	
	add_index :follower_relationships, :follower_id
    add_index :follower_relationships, :followed_id
    add_index :follower_relationships, [:follower_id, :followed_id], :unique => true
  end

  def self.down
    drop_table :follower_relationships
  end
end