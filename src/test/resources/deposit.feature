Feature: Deposit on my bank account
  It should ba possible to make deposits

  Scenario: I want to make a deposit of 100€
    Given I have 350.00 euros on my bank account
    When I make a deposit of 100.00 euros
    Then my balance is 400.00 euros