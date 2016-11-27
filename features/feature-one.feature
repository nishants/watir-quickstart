Feature: View User Details

  @tagone @transactional
  Scenario: Admin views user's address history
    Given I am an admin
    Then I should see all users listed on my homepage
    When I view a user's address
    Then I should see their address and past addresses with duration of stay

  @tagtwo @transactional
  Scenario: Admin views user's address history
    Given I am an admin
    Then I should see all users listed on my homepage
    When I view a user's address
    Then I should see their address and past addresses with duration of stay
