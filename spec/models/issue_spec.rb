require 'spec_helper'

describe Issue do
  it "exists" do
    issue1 = Issue.new
    issue1.should_not be_valid
  end
end
