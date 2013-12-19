module IssuesHelper

  def up_vote_percentage(issue)
    return issue.votes_count > 0 ? (issue.up_vote_count.to_f / issue.votes_count.to_f)*100 : 0
  end

  def down_vote_percentage(issue)
    return issue.votes_count > 0 ? (issue.down_vote_count.to_f / issue.votes_count.to_f)*100 : 0
  end

end
