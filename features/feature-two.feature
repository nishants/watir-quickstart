Feature: View User Details

  @functional @transactional @testparam
  Scenario: Admin does something radically different
    Given I am an admin
    Then I invoke "param_two" on @data, I get value "two"
    When I view a user's address
    Then I should see their address and past addresses with duration of stay
