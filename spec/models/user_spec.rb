require 'spec_helper'

describe User do
  it "is invalid without a name" do
    user = User.new
    user.should_not be_valid
  end
  it "name is Robert Paulson" do
    user = User.new(first_name: "Robert", last_name: "Paulson")
    user.first_name.should match("Robert")
    user.last_name.should match("Paulson")
  end
end
