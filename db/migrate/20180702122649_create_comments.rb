class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :details
      t.references :idea, foreign_key: true

      t.timestamps
    end
  end
end
