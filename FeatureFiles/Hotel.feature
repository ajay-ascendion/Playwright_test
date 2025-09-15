Feature: Hotel Functionality
  As a user,
  I want to search and book hotels,
  So that I can stay in my desired location.

  Scenario: Verify Hotel Search Functionality
    Given the user is on the ixigo.com homepage
    When the user navigates to the 'Hotels' section
    And enters city, check-in and check-out dates
    And clicks 'Search'
    Then a list of available hotels is displayed for the selected city and dates

  Scenario: Validate Hotel Search with Invalid Data
    Given the user is on the 'Hotels' section
    When the user enters invalid city or dates
    And clicks 'Search'
    Then an appropriate error message is displayed
    And no results are shown

  Scenario: Verify Hotel Filter Functionality
    Given hotel search results are displayed
    When the user applies filters (e.g., price range, star rating)
    Then search results update according to selected filters

  Scenario: Verify Hotel Booking Workflow
    Given the user is viewing hotel search results
    When the user selects a hotel
    And clicks 'Book'
    And enters guest details
    And proceeds to payment
    Then the user is able to enter details and reach the payment page
