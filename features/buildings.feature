Feature: A signed in user is able to view buildings
    As a user
    So that I can view buildings
    I want to view the buildings on the buildings page
    
    Scenario: View Buildings on Buildings Page
        Given I am on the Buildings Page
        Then I should see "WG"
