# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  email      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :urls,
  primary_key: :id,
  foreign_key: :user_id,
  class: :ShortenedUrl
end
