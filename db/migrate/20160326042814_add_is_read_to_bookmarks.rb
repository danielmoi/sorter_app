class AddIsReadToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :is_unread, :boolean, :default => true
  end
end
