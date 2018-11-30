Feature: As an admin for the system
So that we can show our new apartments on the site
I want to be able to add a new apartment to the website

    Scenario: Enter text into the number field
      Given I am on the New Apartment Page
      When I fill in "number" with "25"
      Then I should see "25"
    
    Scenario: Check the availability box for an Apartment
      Given I am on the New Apartment Page
      When I check on "availability"
      Then "availability" should be checked
     