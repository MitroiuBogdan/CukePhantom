Feature: Login functionality
  As a user
  I want to log in to the application
  So that I can access my account

  Scenario: Successful login
    Given the user navigates to the login page
    When the user enters valid credentials
    Then the user should see a welcome message
