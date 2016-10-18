class Transaction

  attr_reader :time
  
    def initialize(credit = nil, debit = nil)
      @time = Time.now
    end

end
