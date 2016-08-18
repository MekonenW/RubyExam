class User < ApplicationRecord
	has_secure_password
	has_many :events 
	has_many :comments

	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :location, presence: true
	validates :password, length: { minimum: 8 }, presence: true

end
