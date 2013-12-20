# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'factory_girl'
require 'faker'
Dir[Rails.root.join("test/factories/*.rb")].each {|f| require f}

FactoryGirl.create(:issue_with_votes)

FactoryGirl.create(:issue_with_votes)

 issues = Issue.where(:user == nil)

 issues.each {|i| i.user = User.all.sample; i.save }