require 'Account'

describe 'Account' do
  it 'should be an object' do
    this = Account.new
    expect(this).to be_a(Account)
  end

  it 'should have an array for account history' do
    this = Account.new
    expect(this.transaction_history).to eq([])
  end

end
