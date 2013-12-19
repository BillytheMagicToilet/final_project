class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :bday, :location, :password, :password_confirmation, :remember_me, :encrypted_password

	has_many :votes, :through => :issues
	has_many :created_issues, :foreign_key => "user_id", :class_name => "Issue"

	validates_presence_of :first_name, :last_name, :email, :bday
	has_many :votes, :through => :issues
	has_many :created_issues, :foreign_key => "user_id", :class_name => "Issue"

	EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates :email, :uniqueness => true, :format => EMAIL_REGEX

end
