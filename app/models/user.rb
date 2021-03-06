class User < ActiveRecord::Base
	has_secure_password
	has_many :classrooms
	
	validates :first_name, :last_name, :email, :password, presence: true
	validates :email, uniqueness: true

	def full_name
		"#{first_name} #{last_name}"
	end

end
