class AddIsFavouriteToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :is_favourite, :boolean, :default => false
  end
end
