Feature: allow a visitor to create an account

	As a user
	So that I can interact with DoSomth.in and other users
	I want to be able to create an account on the site

Background: user is on the new user page

	Given I am on the new user page

Scenario: create a new account
	When I fill in "first_name" with "Rob"
	And I fill in "last_name" with "Banks"
	And I fill in "email" with "rob.banks@yahoo.com"
	And I fill in "bday" with "1-Jan-1900"
	And I fill in "location" with "Boonies"
	And I fill in "password" with "1234567890"
	And I press "submit"
	Then I should see "User was successfully created."
