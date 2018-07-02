class CreateUserControls < ActiveRecord::Migration[5.2]
  def change
    create_table :user_controls do |t|
      t.string :display_name
      t.string :user_name
      t.string :password

      t.timestamps
    end
  end
end
