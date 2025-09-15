Feature: Search Suggestions
  As a user,
  I want to see relevant suggestions as I type in search fields,
  So that I can quickly select my desired location.

  Scenario: Verify Search Suggestions
    Given the user is on any search section
    When the user starts typing in the 'From' or 'To' field
    Then relevant suggestions are displayed in the dropdown
