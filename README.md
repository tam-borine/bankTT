# bankTT

This simple bank includes an Account which has a balance and transactions. You can deposit, withdraw, check_balance and print_statement from the account. Following OOP design, the Transaction object was abstracted which has a date, credit, debit and balance for logging purposes.

## Check it out in IRB - terminal commands:

```
git clone git@github.com:tam-borine/bankTT.git
cd git@github.com:tam-borine/bankTT.git

irb
require 'lib/account.rb'
account = Account.new(Transaction)
account.withdraw(60)
account.deposit(133)
account.print_statement
```

### Original Spec Requirements
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
