require 'account'

RSpec.describe Account do
  let(:transaction) {object_double("transaction")}
  subject(:account) {described_class.new(transaction)}

  before (:each) do
    allow(transaction).to receive(:new)
  end

  it "has a balance initialised to 0" do
    expect(account.balance).to eq(0)
  end

  it "can print its balance" do
    expect(account.print_balance).to eq(account.balance)
  end

  it "can increase its balance through deposit method" do
    expect{account.deposit(22)}.to change{account.balance}.from(0).to(22)
  end

  it "can descrease its balance through withdraw method" do
    expect{account.withdraw(22)}.to change{account.balance}.from(0).to(-22)
  end

  it "has transactions" do
    expect(account.transactions).to include(transaction)
  end

  it "timestamps any change in balance (in or outgoing)" do
  end


end
