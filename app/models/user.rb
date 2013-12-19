require 'bcrypt'

class User < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email, :bday
	has_many :votes, :through => :issues
	has_many :created_issues, :foreign_key => "user_id", :class_name => "Issue"

	attr_accessible :first_name, :last_name, :email, :bday, :location, :password, :password_confirmation

	EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

        validates :first_name, :last_name, :email, :bday, :location, :presence => true

        validates :email, :uniqueness => true, :format => EMAIL_REGEX

end
