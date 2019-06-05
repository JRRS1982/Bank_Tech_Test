require 'Transaction'

describe 'Transaction' do
  it 'contains a value' do
    transaction_item = Transaction.new(100)
    expect(transaction_item.value).to eq(100)
  end      

  before do
    Timecop.freeze(Time.new(1982, 7 , 9))
  end

  it 'contains a date' do
    transaction_item = Transaction.new(100)
    expect(transaction_item.date).to eq("09/07/1982")
  end      

  after do
    Timecop.return
  end
end
