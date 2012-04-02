class CreateUploadedfiles < ActiveRecord::Migration
  def change
    create_table :uploadedfiles do |t|

      t.timestamps
    end
  end
end
