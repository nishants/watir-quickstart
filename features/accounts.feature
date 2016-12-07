Feature: Accounts

  @functional @smoke @admin @accounts @create
  Scenario: Admin creates a guest user
    Given I am "admin"
    Then  I am allowed to create a new account
    And   I am not allowed to create account without username
    And   I am not allowed to create account without role
    And   I am not allowed to create account without email
    Then  I enter all fields and save account
    When  I review user details and confirm
    Then  I can see account listed on accounts page
