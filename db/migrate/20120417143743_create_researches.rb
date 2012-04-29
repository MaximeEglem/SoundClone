class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :keywords
      t.string :search
      t.string :results

      t.timestamps
    end
  end
end
