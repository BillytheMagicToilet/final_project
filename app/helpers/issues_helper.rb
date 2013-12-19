module IssuesHelper

  def up_vote_percentage(issue)
    return (issue.up_vote_count.to_f / issue.votes.count.to_f)*100
  end

  def down_vote_percentage(issue)
    return (issue.down_vote_count.to_f / issue.votes.count.to_f)*100
  end

end
