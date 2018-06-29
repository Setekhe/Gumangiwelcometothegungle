class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :idea_title
      t.text :details

      t.timestamps
    end
  end
end
