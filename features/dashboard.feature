Feature: Dashboard

  @functional @core @dashboard
  Scenario: Dashboard for admin user
    Given I am the "admin"
    Then I can see my name on dashboard as an admin
    And I can see all active users listed on my dashboard