Feature: A new user can sign up to create an account
    As a new user
    So that I can apply for an apartment and save account information
    I want to be able to create an account
    
    Scenario: User is directed to Sign Up page
        Given I am on the Login Page
        When I click on "Sign up"
        Then I should be on the Sign Up Page
