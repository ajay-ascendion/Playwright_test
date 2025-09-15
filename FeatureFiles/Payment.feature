Feature: Payment Gateway Integration
  As a user,
  I want to make payments for my bookings,
  So that I can complete my reservations.

  Scenario: Verify Payment Gateway Integration
    Given the user is on the payment page after booking
    When the user enters payment details
    And submits payment
    Then the payment is processed
    And the user receives a confirmation or error message
