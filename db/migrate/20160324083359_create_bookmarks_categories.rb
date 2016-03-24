class CreateBookmarksCategories < ActiveRecord::Migration
  def change
    create_table :bookmarks_categories, :id => false do |t|
      t.integer :bookmark_id
      t.integer :category_id

    end
  end
end
