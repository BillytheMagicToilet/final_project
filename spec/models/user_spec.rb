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
  it "has an invalid email address" do
    a = User.new(first_name: "John", last_name: "Doe", email: "john.doe@yaho.com", bday: "1991-02-08", password: "aaaaaaaa")
    a.save(:validate => false)
    a.should be_valid
    b = User.new(first_name: "Jane", last_name: "Doe", email: "john.doe@yaho.com", bday: "1993-11-12", password: "aaaaaaaa")
    b.should_not be_valid
    c = User.new(first_name: "John", last_name: "Smith", email: "J@&^*()@yahoo", bday: "1991-06-18", password: "aaaaaaaa")
    c.should_not be_valid
    d = User.new(first_name: "Jane", last_name: "Smith", email: "fudge", bday: "1991-09-01", password: "aaaaaaaa")
    d.should_not be_valid
  end
  it "has an invalid password" do
    a = User.new(first_name: "John", last_name: "Doe", email: "john.doe@yaho.com", bday: "1991-02-08", password: "a")
    a.should_not be_valid
  end
  it "is valid" do
    user = User.new(first_name: "John", last_name: "Doe", email: "john.doe@yaho.com", bday: "1993-02-05", password: "aaaaaaaa")
    user.should be_valid
  end
  it "changes the number of users" do
    user = User.new(first_name: "John", last_name: "Doe", email: "john.doe@yaho.com", bday: "1993-02-05", password: "aaaaaaaa")
    expect {user.save}.to change {User.count}.by(1)
  end
end
