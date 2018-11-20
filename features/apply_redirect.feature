Feature: Getting directed to the Rental Application Page
    As a renter
    So that I can have the ability to submit an application
    I want to be directed to the application page
        
    Scenario: Signed in User is directed to Apply Page
        Given I am signed in
        When I click on "Apply"
        Then I should be on the Apply Page
        
    Scenario: Non-Signed in user is directed to Login Page
        Given I am on the Home Page
        When I click on "Apply"
        Then I should be on the Login Page
