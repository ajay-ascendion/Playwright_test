Feature: Flight Functionality
  As a user,
  I want to search and book flights,
  So that I can travel between cities.

  Scenario: Verify Flight Search Functionality
    Given the user is on the ixigo.com homepage
    When the user navigates to the 'Flights' section
    And enters 'From' and 'To' cities
    And selects a departure date
    And clicks 'Search'
    Then a list of available flights is displayed for the selected route and date

  Scenario: Validate Flight Search with Invalid Data
    Given the user is on the 'Flights' section
    When the user enters invalid city names or leaves fields blank
    And clicks 'Search'
    Then an appropriate error message is displayed
    And no results are shown

  Scenario: Verify Flight Filter Functionality
    Given flight search results are displayed
    When the user applies filters (e.g., selects airline, non-stop flights)
    Then search results update according to selected filters

  Scenario: Verify Flight Booking Workflow
    Given the user is viewing flight search results
    When the user selects a flight
    And clicks 'Book'
    And enters passenger details
    And proceeds to payment
    Then the user is able to enter details and reach the payment page
