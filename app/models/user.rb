# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  created_at      :datetime
#  updated_at      :datetime
#  image_url       :string
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :categories
  has_many :favourites
  # has_many :bookmarks, :through => :categories
  has_many :bookmarks
end
