Feature: Registration Workflow
  As a new user,
  I want to register an account,
  So that I can use ixigo.com services.

  Scenario: Verify Registration Workflow
    Given the user is on the registration page
    When the user enters valid details
    And clicks 'Register'
    Then the user account is created
    And a confirmation message is displayed

  Scenario: Validate Registration with Invalid Data
    Given the user is on the registration page
    When the user enters invalid or incomplete details
    And clicks 'Register'
    Then an appropriate error message is displayed
    And registration fails
