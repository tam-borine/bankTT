class Transaction

  attr_reader :date, :credit, :debit, :balance

    def initialize(credit = nil, debit = nil, balance = nil)
      @date = Time.now.strftime('%d/%m/%y')
      @credit = credit
      @debit = debit
      @balance = balance.round(2)
    end

end
