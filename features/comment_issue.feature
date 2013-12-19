Feature: Commenting on an issue

	As a user,
	So I can let people know what I think about an issue,
	I want to be able to add comments to an issue.

Background:
	Given I have a user account
		And I am on the issue page
		And the title of the issue is "Alpha"
Scenario:
	When I fill in "Comment" with "Delta"
		And I click on the "Submit" button
	Then I should see my new comment
