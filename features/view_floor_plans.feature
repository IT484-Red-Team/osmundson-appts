Feature: User can view the floor plans to see what is available
    As a user
    So that I can see if I find a floor plan suited to my needs
    I want to be able to view the floor plans


    Scenario: View Floor Plan page
        Given I am on the Home Page
        Then I should see "Floor Plans"
        When I click on "Floor Plans"
        Then I should be on the Floor Plan page
