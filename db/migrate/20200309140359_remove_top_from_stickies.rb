class RemoveTopFromStickies < ActiveRecord::Migration[6.0]
  def change
    remove_column :stickies, :top
  end
end
