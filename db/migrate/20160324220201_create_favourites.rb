class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :bookmark_id
      t.boolean :is_favourite
      t.timestamps
    end
  end
end
