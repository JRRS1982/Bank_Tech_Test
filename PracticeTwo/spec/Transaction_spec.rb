require 'Transaction'

describe 'Transaction' do
  it 'contains a value' do
    transaction_item = Transaction.new(100)
    expect(transaction_item.value).to eq(100)
  end      
end