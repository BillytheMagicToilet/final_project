require 'spec_helper'

describe User do
  it "exists" do
    user = User.new
    client.should_not be_valid
  end
end
