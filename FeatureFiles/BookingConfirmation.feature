Feature: Booking Confirmation Notification
  As a user,
  I want to receive confirmation after booking,
  So that I know my reservation is successful.

  Scenario: Verify Booking Confirmation Email/SMS
    Given the user completes a booking for flight, hotel, or train
    When the booking is successful
    Then a confirmation email or SMS is received by the user
