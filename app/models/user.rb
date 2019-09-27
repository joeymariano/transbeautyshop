class User < ApplicationRecord
	include BCrypt

	has_many :posts
	has_secure_password

	validates_with EmailValidator
	validates :password, presence: true, length: { in: 6..20 }
	validates :first_name, presence: true
	validates :last_name, presence: true
end
