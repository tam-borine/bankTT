require 'transaction'

RSpec.describe Transaction do
  let(:account) {object_double("account")}
  subject(:transaction) {described_class.new}

  before (:each) do
  end

it "timestamps upon instantiation" do
  expect(transaction.time).to be_within(10).of(Time.now)
end


end
