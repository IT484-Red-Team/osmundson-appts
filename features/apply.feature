Feature: Applying for renting an apartment
    As a renter
    So that I can apply to live in an apartment
    I want to submit a completed application (via forms) to the property manager
        
    Scenario: Signed in User is directed to Apply Page
        Given I am signed in
        When I click on "Apply"
        Then I should be on the Apply Page
        
    Scenario: Non-Signed in user is directed to Login Page
        Given I am on the Home Page
        When I click on "Apply"
        Then I should be on the Login Page
