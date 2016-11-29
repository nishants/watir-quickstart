Feature: View User Details

  @functional @transactional
  Scenario: Admin views user's address history
    Given I am an admin
    Then I should see all users listed on my homepage
    When I view a user's address
    Then I should see their address and past addresses with duration of stay

  @functional @transactional
  Scenario: Admin does something else
    Given I am an admin
    Then I should see all users listed on my homepage
    When I view a user's address
    Then I should see their address and past addresses with duration of stay

  @integration @transactional
  Scenario: Admin views user's address histories
    Given I am an admin
    Then I should see all users listed on my homepage
    When I view a user's address
    Then I should see their address and past addresses with duration of stay
