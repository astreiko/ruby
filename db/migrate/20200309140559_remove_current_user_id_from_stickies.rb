class RemoveCurrentUserIdFromStickies < ActiveRecord::Migration[6.0]
  def change
    remove_column :stickies, :current_user_id
  end
end
