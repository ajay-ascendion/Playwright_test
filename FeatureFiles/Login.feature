Feature: Login Functionality
  As a registered user,
  I want to log in to my account,
  So that I can access personalized features.

  Scenario: Verify Login Functionality
    Given the user has a registered account
    When the user clicks 'Login'
    And enters valid credentials
    And clicks 'Submit'
    Then the user is logged in and redirected to the dashboard/homepage

  Scenario: Validate Login with Invalid Credentials
    Given the user is on the login page
    When the user enters invalid credentials
    And clicks 'Submit'
    Then an appropriate error message is displayed
    And the user is not logged in
