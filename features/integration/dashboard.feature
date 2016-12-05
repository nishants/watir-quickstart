Feature: Dashboard
  @integration @smoke @dashboard
  Scenario: Dashboard view for admin user
    Given I am "admin"
    Then I can see my name on dashboard
    And I can see all active users table
