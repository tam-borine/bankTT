require 'account'

RSpec.describe Account do
  let(:transaction) {object_double("transaction")}
  subject(:account) {described_class.new(transaction)}

  before (:each) do
    allow(transaction).to receive(:new).and_return(transaction)
  end

  it "has a balance initialised to 0" do
    expect(account.balance).to eq(0)
  end

  it "can print a statement of transactions" do
    withdraw_amount_n_times(11,5)
    expect(account.balance).to eq (-55)
    expect(account.print_statement).to include (account.balance)
  end

  it "can print its balance" do
    expect(account.print_balance).to eq(account.balance)
  end

  it "can increase its balance through deposit method" do
    expect{account.deposit(22)}.to change{account.balance}.from(0).to(22)
  end

  it "can decrease its balance through withdraw method" do
    expect{account.withdraw(22)}.to change{account.balance}.from(0).to(-22)
  end

  it "a transaction is made upon deposit" do
    account.deposit(55)
    expect(account.transactions).to include(transaction)
  end

  it "a transaction is made upon withdraw" do
    account.withdraw(55)
    expect(account.transactions).to include(transaction)
  end



end
