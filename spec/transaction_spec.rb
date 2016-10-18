require 'transaction'

RSpec.describe Transaction do
  let(:account) {object_double("account")}
  subject(:transaction) {described_class.new}

  before (:each) do
  end

it "timestamps upon instantiation" do
  expect(transaction.time).to be_within(10).of(Time.now)
end

it "credit can be specified on instantiation" do
  transaction = Transaction.new(55)
  expect(transaction.credit).to eq(55)
end

it "debit can be specified on instantiation" do
  transaction = Transaction.new(0,55)
  expect(transaction.debit).to eq(55)
end

it "debit and credit default to nil if not specified on instantiation"




end
