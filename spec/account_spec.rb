require 'account'

RSpec.describe Account do
  subject(:account) {described_class.new}

  it "has a balance initialised to 0" do
    expect(account.balance).to eq(0)
  end

  it "can print its balance" do
    expect(account.print_balance).to eq(account.balance)
  end

  it "can increase its balance through deposit method" do
    expect{account.deposit(22)}.to change{account.balance}.from(0).to(22)
  end

  it "can descrease its balance through withdraw method"

  it "timestamps any change in balance (in or outgoing)"


end
