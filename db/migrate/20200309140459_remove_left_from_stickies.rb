class RemoveLeftFromStickies < ActiveRecord::Migration[6.0]
  def change
    remove_column :stickies, :left
  end
end
