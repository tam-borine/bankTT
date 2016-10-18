class Transaction

  attr_reader :time, :credit, :debit

    def initialize(credit = nil, debit = nil, balance = nil)
      @time = Time.now.strftime('%d/%m/%y')
      @credit = credit
      @debit = debit
      @balance = balance
    end

end
