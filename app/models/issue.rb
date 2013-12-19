

class Issue < ActiveRecord::Base

	validates_presence_of :title, :description, :goal
	belongs_to :user
	has_many :votes
	has_many :comments

	def self.Trending
		issues = Issue.all
		#binding.pry
		valued = issues.map {|i| [i, i.trending_heuristic]}
		valued.sort! {|a, b| b[1] <=> a[1]}
		return valued.map{|i| i[0]}
	end

  def self.New
    return Issue.order(:created_at)
  end

  def self.Top
    return Issue.order(:votes_count)
  end

  def trending_heuristic
    result = 0.0
    votes.each do |v| 
     diff = TimeDifference.between(v.created_at, Time.now).in_minutes
     result += 1.0/diff
   end

   return result
  end

  def owner_name
    "#{user.first_name} #{user.last_name}"
  end

  def up_votes
    return votes.where(vote_type:Vote::TYPES[:up_vote])
  end

  def up_vote_count
    return up_votes.count
  end

  def down_votes
    return votes.where(vote_type:Vote::TYPES[:down_vote])
  end

  def down_vote_count
    return down_votes.count
  end

end
