

Given /^(?:|I )am on (.+)$/ do |page_name|
  if ("sign in page")
    visit(new_user_session_path)
  end
  #visit path_to(page_name)
end

Given /^(?:|I )have a user account/ do
  a = User.new(first_name: "John", last_name: "Doe", email: "john.doe@yaho.com", bday: "1991-02-08", password: "aaaaaaaa")
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, value)
end

When /^(?:|I )click on the "([^"]*)" button/ do |field|
  if ("Yay")
    Issue.upvote
  else
    Issue.downvote
  end
end
Then /^(?:|I )should see "([^"]*)"$/ do |page_name|
  if ("Sign up today")
    visit(application_index_path)
  end
end
