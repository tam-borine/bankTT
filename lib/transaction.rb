class Transaction

  attr_reader :time, :credit, :debit

    def initialize(credit = nil, debit = nil)
      @time = Time.now
      @credit = credit
      @debit = debit
    end

end
