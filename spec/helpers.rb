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

end
