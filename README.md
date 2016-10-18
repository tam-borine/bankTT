# bankTT

This simple bank includes an Account which has a balance and transactions. You can deposit, withdraw, check_balance and print_statement from the account. A dependency abstracted from this logic was the Transaction which has a date, credit, debit and balance for logging purposes.

## Check it out in IRB - terminal commands:

```
git clone this_repo
cd this_repo

irb
require 'lib/account.rb'
account = Account.new(Transaction)
account.withdraw(60)
account.deposit(133)
account.print_statement
```

### Spec
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
### A better readme needs to follow
