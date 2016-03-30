class AddDefaultValueForUserName < ActiveRecord::Migration
  def change
    change_column :users, :name, :text, :default => 'Murakami'
  end
end
