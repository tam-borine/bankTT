require 'transaction'

RSpec.describe Transaction do
  let(:account) {object_double("account")}
  subject(:transaction) {described_class.new}

  before (:each) do
  end

it "timestamps upon instantiation" do
  expect(transaction.time).to be_within(10).of(Time.now)
end

it "credit can be specified on instantiation"

it "debit can be specified on instantiation"

it "debit and credit default to nil if not specified on instantiation"




end
