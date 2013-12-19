

Given /^(?:|I )am on (.+)$/ do |page_name|
  if ("sign in page")
    visit(new_user_session_path)
  end
end

Given /^(?:|I )have a user account/ do
  a = User.new(first_name: "John", last_name: "Doe", email: "john.doe@yaho.com", bday: "1991-02-08", password: "aaaaaaaa")
end

Given(/^the title of the issue is "(.*?)"$/) do |arg1|
  arg1 = Issue.where(title: arg1)
end


When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in find_field(field), :with => value
end


When /^(?:|I )click on the "([^"]*)" button/ do |field|
  if ("Yay")
    find_by_id('upvote-button').click
  elsif ("Nay")
    find_by_id('downvote-button').click
  elsif ("Sign In")
    find_button('f.submit "Sign In').click
  end
end
Then /^(?:|I )should see "([^"]*)"$/ do |page_name|
  if ("Sign up today")
    visit(application_index_path)
  elsif ("my new issue")
    visit(issue_path)
  end
  #if
end

When(/^I fill in "(.*?)" with "rob\.banks@yahoo\.com$/) do |arg1|
  fill_in arg1, :with => "rob.banks@yahoo.com"
end

