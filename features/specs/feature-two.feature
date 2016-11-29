Feature: View User Details

  @tagone @transactional
  Scenario: Admin does something radically different
    Given I am an admin
    Then I should see all users listed on my homepage
    When I view a user's address
    Then I should see their address and past addresses with duration of stay
