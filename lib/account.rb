require_relative 'transaction'
class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, transaction_class)
    @balance += amount
    Transaction.new(amount,0)
  end

  def withdraw(amount)
    @balance -= amount
  end

  def print_balance
    @balance
  end

end
