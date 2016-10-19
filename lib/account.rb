require_relative 'transaction'
require 'table_print'
class Account

  attr_accessor :balance, :transactions

  def initialize(transaction_class)
    @transaction = transaction_class
    @balance = 0
    @transactions = []
  end

  def print_statement #extract to own class
    data = []
    @transactions.each { |transaction|
      data << { date: transaction.date, credit: transaction.credit, debit: transaction.debit, balance: transaction.balance}
    }
    tp data # don't use a gem unless necessary
  end

  def deposit(amount)
    amount = amount.round(2) #transactions/balances reponsibility
    @balance += amount #a balance mixin that knows how to update itself
    @transactions << @transaction.new(amount,0, @balance)
  end

  def withdraw(amount)
    amount = amount.round(2)
    @balance -= amount
    @transactions << @transaction.new(0, amount, @balance)
  end


end
