Feature: A logged in User or Admin is returned to Home Page
    As a returning user
    So that I can reach the home page
    I want to go to the home page after clicking login
    
    Scenario: Valid user login is redirected to the Home Page (happy path)
        Given I am on the Login Page
        When "test@email.com" logs in
        Then I should be on the Home Page
        
    Scenario: Invalid user login is met with error message
        Given I am on the Login Page
        When "InvalidUser@email.com" logs in
        Then I should see "Invalid Credentials"