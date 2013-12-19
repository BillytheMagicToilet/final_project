Feature: Creating an Issue

	As a user,
	So that I can discuss topics that are important to me and others,
	I want to be able to create a new issue.

Scenario:
	Given that I have a user account
		And that I am on the new issue page
Scenario:
	When I fill in "Title" with "Alpha"
		And I fill in "Description" with "Bravo"
		And I fill in "Goal" with "Charlie"
		And I press "Create Issue"
	Then I should see my new issue
