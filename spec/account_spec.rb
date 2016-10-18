require 'account'

RSpec.describe Account do
  subject(:account) {described_class.new}

  it "has a balance initialised to 0" do
    expect(account.balance).to eq(0)
  end

  it "can print its balance"

  it "can increase its balance through deposit method"

  it "can descrease its balance through withdraw method"

  it "timestamps any change in balance (in or outgoing)"


end
