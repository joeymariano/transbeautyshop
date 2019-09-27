class User < ApplicationRecord
	include BCrypt

	has_many :posts
	has_secure_password
end
