class Vote < ActiveRecord::Base
	belongs_to :user
	belongs_to :issue, :counter_cache => true
	TYPES = {:up_vote => "up_vote", :down_vote => "down_vote"}

end
