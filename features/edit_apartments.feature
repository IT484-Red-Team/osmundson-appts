Feature: As an admin for the system
So that we can edit our existing apartments
I want to be able to edit an existing apartment on the website

    Scenario: View the apartment number
      Given I am on the "Edit Apartment" Page
      When I click on "apt_num"
      Then I should see "25"
      
    Scenario: View the apartment availability
      Given I am on the "Edit Apartment" Page
      When I check on "availability"
      Then "availability" should be unchecked