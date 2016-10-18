require 'transaction'

RSpec.describe Transaction do
  let(:account) {object_double("account")}
  subject(:transaction) {described_class.new}

  before (:each) do
  end

it "datestamps upon instantiation" do
  expect(transaction.date).to eq( '18/10/16')
end

it "credit can be specified on instantiation" do
  transaction = Transaction.new(55)
  expect(transaction.credit).to eq(55)
end

it "debit can be specified on instantiation" do
  transaction = Transaction.new(0,55)
  expect(transaction.debit).to eq(55)
end

it "debit and credit default to nil if not specified on instantiation" do
  transaction = Transaction.new
  expect(transaction.debit).to eq(nil)
  expect(transaction.credit).to eq(nil)
end




end
