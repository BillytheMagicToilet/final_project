require 'spec_helper'

describe Issue do
  it "is invalid without a title" do
    issue = Issue.new(description: "Nothing!", goal: "Nothing!")
    issue.should_not be_valid
  end
  it "is invalid without a description" do
    issue = Issue.new(title: "Trainspotting", goal: "Nothing!")
    issue.should_not be_valid
  end
  it "is invalid without a goal" do
    issue = Issue.new(title: "Trainspotting", description: "Nothing!")
    issue.should_not be_valid
  end
  it "has a title that matches 'Trainspotting'" do
    issue = Issue.new(title: "Trainspotting")
    issue.title.should match("Trainspotting")
  end
  it "has 'a' as a higher trending issue than 'b'" do
    a = Issue.new(title: "A", description: "A", goal: "A")
    a.save(:validate => false)
    b = Issue.new(title: "B", description: "B", goal: "B")
    b.save(:validate => false)
    v1 = Vote.new(issue: a, created_at: 10.minutes.ago)
    v1.save(:validate => false)
    v2 = Vote.new(issue: b, created_at: 20.minutes.ago)
    v2.save(:validate => false)
    print Issue.Trending
  end
  it "changes the number of issues" do
    issue = Issue.new(title: "Trainspotting", description: "Nothing!", goal: "Nothing!")
    expect {issue.save}.to change {Issue.count}.by(1)
  end
  it "raises an error if saved without a title/description/goal" do
    issue = Issue.new
    expect {issue.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end
end
