Feature: Customer Support Access
  As a user,
  I want to access customer support options,
  So that I can get help when needed.

  Scenario: Verify Customer Support Access
    Given the user is logged in
    When the user navigates to the 'Help' or 'Support' section
    And tries to contact support
    Then support options (chat, email, phone) are available and functional
