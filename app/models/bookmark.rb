# == Schema Information
#
# Table name: bookmarks
#
#  id          :integer          not null, primary key
#  url         :text
#  title       :text
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Bookmark < ActiveRecord::Base
  has_and_belongs_to_many :categories
end
