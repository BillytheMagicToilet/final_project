class Issue < ActiveRecord::Base
	validates_prescence_of :title, :description, :goal
	belongs_to :user
	has_many :votes
	def self.Trending
		
	end
	def trending_heuristic
		result = 0
		votes.each do |v| 
			diff = TimeDifference.between(:created_at, Time.now).in_hours
			result += 1.0/diff
		end
		return result
	end
        def owner_name
            u = User.find(user_id)
            "#{u.first_name} #{u.last_name}"
        end
end
