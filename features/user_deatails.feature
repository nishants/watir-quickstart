Feature: View User Details

  @functional @user_address
  Scenario: Admin views user's address history
    Given I am an admin
    When I view a user's address
    Then I should see their address and past addresses with duration of stay
