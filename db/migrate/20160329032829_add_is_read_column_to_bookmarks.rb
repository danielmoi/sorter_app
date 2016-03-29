class AddIsReadColumnToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :is_read, :boolean, :default => false
  end
end
