require 'Account'
require 'pry'

describe 'Account' do
  subject(:acc) { Account.new }
# CAN PROBABLY REFACTOR OUT THE TRANSACTION OBJECT HERE / MOCK IT?

  it 'should be an object' do
    expect(acc).to be_a(Account)
  end

  it 'should be able to add a transaction object to the account' do
    acc.create_transaction(amount: 100, deposit: true)
    expect(acc:@tranaction_history).not_to be_empty
  end

  it 'should be able to add two transaction objects to transaction_history' do
    acc.create_transaction(amount: 100, deposit: true)
    acc.create_transaction(amount: 200, deposit: true)
    expect(acc.history.length).to eq(2)
  end
end
