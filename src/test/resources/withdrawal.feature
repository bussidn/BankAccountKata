Feature: Withdraw from my bank account
  It should ba possible to withdraw money

  Scenario: Successful withdrawal of 200.00 euros
    Given I have 1500.00 euros on my bank account
    When I withdraw 200.00 euros
    Then My balance is 1300.00 euros

  Scenario: Unsuccessful withdrawal of 500.00 euros
    Given I have 300.00 euros on my bank account
    When I withdraw 500.00 euros
    Then My balance is 300.00 euros