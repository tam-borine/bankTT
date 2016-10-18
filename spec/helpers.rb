module Helpers

  def withdraw_amount_n_times(amount,n)
    n.times do
      subject.withdraw(amount)
    end
  end

  def deposit_amount_n_times(amount,n)
    n.times do
      subject.deposit(amount)
    end
  end

  def give_spy_methods(transaction)
    allow(transaction).to receive(:new).and_return(transaction)
    allow(transaction).to receive(:date).and_return(Time.now)
    allow(transaction).to receive(:credit)
    allow(transaction).to receive(:debit)
  end

end
