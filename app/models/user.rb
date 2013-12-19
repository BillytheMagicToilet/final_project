require 'bcrypt'

class User < ActiveRecord::Base
	
	has_many :votes, :through => :issues
	has_many :created_issues, :foreign_key => "user_id", :class_name => "Issue"

	attr_accessor :new_password, :new_password_confirmation

	validates_confirmation_of :new_password, :if=>:password_changed?

	before_save :hash_new_password, :if=>:password_changed?


		
		

	def password_changed?
		!@new_password.blank?
	end

	private

	def hash_new_password
		self.password = BCrypt::Password.create(@new_password)
	end

	def self.authenticate(email, password)

		if user = User.find_by_email(email)

			if BCrypt::Password.new(user.password).is_password? password

				return user
			end
		end
		
      return nil
  end
end
