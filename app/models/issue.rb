class Issue < ActiveRecord::Base

	validates_presence_of :title, :description, :goal
	belongs_to :user
	has_many :votes
	has_many :comments

	def self.Trending
		issues = Issue.all
		valued = issues.map {|i| [i, i.trending_heuristic]}
		valued.sort! {|a, b| a[1] <=> b[1]}
		return valued.map{|i| i[0]}
	end

  def self.New
    return Issue.order(:created_at)
  end

  def self.Top
    return Issue.order(:votes_count)
  end

	def trending_heuristic
		result = 0
		votes.each do |v| 
			diff = TimeDifference.between(created_at, Time.now).in_hours
			result += 1.0/diff
		end

		return result
	end

  def owner_name
    u = User.find(user_id)
    "#{u.first_name} #{u.last_name}"
  end
end
