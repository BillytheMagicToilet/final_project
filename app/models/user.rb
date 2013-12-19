class User < ActiveRecord::Base
	
	has_many :votes, :through => :issues
	has_many :created_issues, :foreign_key => "user_id", :class_name => "Issue"

end
