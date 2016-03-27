class AddBookmarkIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :bookmark_id, :integer
  end
end
