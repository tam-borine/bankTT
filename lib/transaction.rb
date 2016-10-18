class Transaction

  attr_reader :date, :credit, :debit

    def initialize(credit = nil, debit = nil, balance = nil)
      @date = Time.now.strftime('%d/%m/%y')
      @credit = credit
      @debit = debit
      @balance = balance
    end

end
