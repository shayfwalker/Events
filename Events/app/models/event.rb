class Event < ApplicationRecord
  belongs_to :user
  has_many :attendees
  has_many :comments
  has_many :users_attending, through: :attendees, source: :user

end
