Feature: Creating an Issue

	As a user,
	So that I can discuss topics that are important to me and others,
	I want to be able to create a new issue.

Background:
	Given I have a user account
		And I am on the new issue page
Scenario:
	When I fill in "title" with "Alpha"
		And I fill in "Description" with "Bravo"
		And I fill in "Goal" with "Charlie"
		And I click on the "Create Issue" button
	Then I should see my new issue
