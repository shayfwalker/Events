class User < ApplicationRecord
has_many :events
has_many :attendees
has_many :attended, through: :attendees, source: :event
validates :first_name , :last_name , :email, :location, presence: true
validates :password_digest, presence: true 
end
