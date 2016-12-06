Feature: Dashboard

  @integration @smoke @admin @accounts @create
  Scenario: Admin creates a guest user
    Given I am "admin"
    Then  I am allowed to create a new account
    And   I am not allowed to create account without username
    And   I am not allowed to create account without role
    And   I am not allowed to create account without email
    When  I create account
    Then  I am asked to review user details
    And I can see all users table
