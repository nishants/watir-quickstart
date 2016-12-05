Feature: Dashboard

  @functional @smoke @admin @accounts @create @skip
  Scenario: Admin creates a guest user
    Given I am "admin"
    Then I have create user option on dashboard
    And I can create a new user
    Then I see new created user on new users page
