require_relative 'transaction'
class Account

  attr_reader :balance, :transactions

  def initialize(transaction_class)
    @transaction = transaction_class
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transaction.new(amount,0)
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_balance
    @balance
  end

end
