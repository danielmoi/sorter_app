class RemoveBookmarkIdFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :bookmark_id, :integer

  end
end
