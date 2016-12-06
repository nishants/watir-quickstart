Feature: Dashboard

  @functional @smoke @admin @accounts @create @skip
  Scenario: Admin creates a guest user
    Given I am "admin"
    Then  I am allowed to create a new account
    And   I am not allowed to create account without username
    And   I am not allowed to create account without role
    And   I am not allowed to create account without email
    When  I create account
    Then  I can see account listed on accounts page
