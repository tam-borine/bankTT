require_relative 'transaction'
class Account

  attr_accessor :balance, :transactions

  def initialize(transaction_class)
    @transaction = transaction_class
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @transactions << @transaction.new(amount,0)
    @balance += amount
  end

  def withdraw(amount)
    @transactions << @transaction.new(0, amount)
    @balance -= amount
  end

  def print_balance
    @balance
  end

end
