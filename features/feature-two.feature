Feature: View User Details

  @functional @regression @transactional @one @stub
  Scenario: Admin does something radically different
    Given I am an "admin"
    Then My username is "admin" and password is "admin@12345"
    Then I invoke "param_two" on @data, I get value "two"
    When I view a user's address
    Then I should see their address and past addresses with duration of stay

  @functional @smoke @transactional @two @stub
  Scenario: Admin does something radically different
    Then I should see their address and past addresses with duration of stay
