Feature: As an admin for the system
So that we can show our new apartments on the site
I want to be able to add a new apartment to the website

    Scenario: View content on New Apartments Page
      Given I am on the New Apartments Page
      When I fill in "number" with "25"
      Then I should see "25"
      
     