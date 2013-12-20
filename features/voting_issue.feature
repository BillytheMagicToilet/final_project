Feature: Voting on issues

	As a user,
	So I can let others know what I think about an issue and to increase awareness,
	I want to be able to vote on issues

Background: issue has been added to database
	Given I have a user account
		And I am on the issue page
		And the title of the issue is "Alpha"
Scenario: vote "Yay"
	When I click on the "Yay" button
	Then I should see my vote
		And I should see the voting rating go up one
Scenario: vote "Nay"
	When I click on the "Nay" button
	Then I should see my vote
		And I should see the voting rating go down one