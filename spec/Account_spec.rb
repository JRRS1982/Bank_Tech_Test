require 'Account'
require 'pry'

describe 'Account' do
  let(:acc) { Account.new }

  it 'should be an object' do
    expect(acc).to be_a(Account)
  end

  it 'should be able to add a transaction object to the account' do
    acc.create_transaction(amount: 100, deposit: true)
    expect(acc:@tranaction_history).not_to be_empty
  end
end
