class RemoveCategoryIdFromBookmarks < ActiveRecord::Migration
  def change
    remove_column :bookmarks, :category_id, :integer
  end
end
