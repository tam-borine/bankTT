require_relative 'transaction'
require 'table_print'
class Account

  attr_accessor :balance, :transactions

  def initialize(transaction_class)
    @transaction = transaction_class
    @balance = 0
    @transactions = []
  end

  def print_statement
    data = []
    @transactions.each { |transaction|
      data << { time: transaction.time, credit: transaction.credit, debit: transaction.debit, balance: @balance}
    }
    tp data
  end

  def deposit(amount)
    @balance += amount
    @transactions << @transaction.new(amount,0, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << @transaction.new(0, amount, @balance)
  end

  def print_balance
    @balance
  end


end
