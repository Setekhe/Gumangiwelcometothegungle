class Complete < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :complete, :boolean
  end
end
