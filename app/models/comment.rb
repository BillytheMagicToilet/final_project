class Comment < ActiveRecord::Base
	attr_accessible :body, :comment_id, :user_id
	belongs_to :user
	belongs_to :issue
	belongs_to :comment
	
	
end
