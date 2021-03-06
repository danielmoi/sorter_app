# == Schema Information
#
# Table name: bookmarks
#
#  id           :integer          not null, primary key
#  url          :text
#  title        :text
#  description  :text
#  created_at   :datetime
#  updated_at   :datetime
#  is_favourite :boolean          default("false")
#  is_unread    :boolean          default("true")
#  user_id      :integer
#  is_read      :boolean          default("false")
#  notes        :text
#

class Bookmark < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_one :favourite
end
