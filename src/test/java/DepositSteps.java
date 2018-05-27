import bank.Account;
import cucumber.api.java8.En;

import static org.assertj.core.api.Assertions.assertThat;

public class DepositSteps implements En {

    private bank.Account account;

    public DepositSteps() {

        Given("^I have (.+) euros on my bank account$", (Double balance) -> account = new Account(balance));
        When("^I make a deposit of (.+) euros$", (Double amount) -> account.deposit(amount));
        Then("^my balance is (.+) euros$", (Double expectedBalance) -> assertThat(account.balance()).isEqualTo(expectedBalance));
    }
}
