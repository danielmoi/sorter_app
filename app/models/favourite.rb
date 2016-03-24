# == Schema Information
#
# Table name: favourites
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  bookmark_id  :integer
#  is_favourite :boolean
#  created_at   :datetime
#  updated_at   :datetime
#

class Favourite < ActiveRecord::Base
  belongs_to :bookmark
  belongs_to :user
end
