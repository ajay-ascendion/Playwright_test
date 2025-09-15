Feature: Train Functionality
  As a user,
  I want to search and book trains,
  So that I can travel between stations.

  Scenario: Verify Train Search Functionality
    Given the user is on the ixigo.com homepage
    When the user navigates to the 'Trains' section
    And enters 'From' and 'To' stations
    And selects travel date
    And clicks 'Search'
    Then a list of available trains is displayed for the selected route and date

  Scenario: Validate Train Search with Invalid Data
    Given the user is on the 'Trains' section
    When the user enters invalid station names or leaves fields blank
    And clicks 'Search'
    Then an appropriate error message is displayed
    And no results are shown

  Scenario: Verify Train Booking Workflow
    Given the user is viewing train search results
    When the user selects a train
    And clicks 'Book'
    And enters passenger details
    And proceeds to payment
    Then the user is able to enter details and reach the payment page
