class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.text :title
      t.text :description
      t.timestamps
    end
  end
end
