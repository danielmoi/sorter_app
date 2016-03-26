# == Schema Information
#
# Table name: unreads
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  bookmark_id  :integer
#  is_favourite :boolean
#  created_at   :datetime
#  updated_at   :datetime
#

class Unread < ActiveRecord::Base
end
