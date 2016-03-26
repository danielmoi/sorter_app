class CreateUnreads < ActiveRecord::Migration
  def change
    create_table :unreads do |t|
      t.integer :user_id
      t.integer :bookmark_id
      t.boolean :is_unread
      t.timestamps
    end
  end
end
