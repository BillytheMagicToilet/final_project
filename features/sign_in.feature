Feature: Signing in to user

	As a user
	So that I can interact with DoSomth.in and other users
	I want to be able to sign in to my user account on the site.

Scenario:
	Given I am on the sign in page
	And I already have an account
	When I fill in "email" with "rob.banks@yahoo.com
	And I fill in "password" with "1234567890"
	And I press "Sign In"
	Then I should see my dashboard