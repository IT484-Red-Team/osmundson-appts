Feature: A signed in user is able to view buildings and their apartments
    As a user
    So that I can view buildings and apartments
    I want to view the buildings and apartments on the apartments page
    
    Scenario: View Buildings on Apartments Page
        Given I am on the Apartments Page
        Then I should see "WG"
    
    Scenario: View Apartments on Apartments Page
        Given I am on the Apartments Page
        Then I should see "1"