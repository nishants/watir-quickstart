Feature: Dashboard

  @functional @smoke @dashboard
  Scenario: Dashboard for admin user
    Given I am "admin"
    Then I can see my name on dashboard as an admin
    And I can see all active users listed on my dashboard