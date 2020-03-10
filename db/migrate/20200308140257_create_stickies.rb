class CreateStickies < ActiveRecord::Migration[6.0]
  def change
    create_table :stickies do |t|
      t.string :current_user_id
      t.string :sticky_id
      t.string :top
      t.string :left
      t.string :text

      t.timestamps
    end
  end
end
