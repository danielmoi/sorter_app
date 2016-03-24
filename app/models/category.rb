# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Category < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :bookmarks
end
