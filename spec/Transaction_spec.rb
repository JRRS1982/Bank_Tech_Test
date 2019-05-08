
# class Transaction
#   attr_reader :amount, :date, :deposit?
  
#   def initialize(amount: amount, date = Date.now)
#     @amount = amount
#   end
  
# end

require 'Transaction'

describe 'Transaction' do
  subject(:transaction) { described_class.new(date: "08/05/2019", amount: 100, deposit?: true) }
  let("08/05/2019") { double :date }
  it 'should have an amount as an integer' do
    expect(transaction.date).to eq("08/05/2019")
    expect(transaction.amount).to eq(100)
    expect(transaction.deposit?).to eq(true)
  end
end
