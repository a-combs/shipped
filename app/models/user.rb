class User < ApplicationRecord

	
	has_secure_password
	has_many :jobs

	validates :username, uniqueness: true
	
end
