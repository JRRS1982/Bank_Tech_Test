require 'Account'
require 'pry'

describe 'Account' do
  subject(:acc) { Account.new }

  it 'should be an object' do
    expect(acc).to be_a(Account)
  end

  describe '#create_transaction' do
    it 'should be able to add a transaction object to the account' do
      acc.create_transaction(amount: 100)
      expect(acc:@tranaction_history).not_to be_empty
    end

    it 'should be able to add two transaction objects to transaction_history' do
      acc.create_transaction(amount: 100)
      acc.create_transaction(amount: 200)
      expect(acc.history.length).to eq(2)
    end

    it 'should define deposit as true and withdrawal as false' do
      acc.create_transaction(amount: 100)
      expect(acc.history[0].deposit).to eq(true)
      expect(acc.history[0].deposit).not_to eq(false)
      expect(acc.history[0].withdrawal).to eq(false)
      expect(acc.history[0].withdrawal).not_to eq(true)
    end

    it 'should define deposit as true and withdrawal as false' do
      acc.create_transaction(amount: -100)
      expect(acc.history[0].deposit).to eq(false)
      expect(acc.history[0].deposit).not_to eq(true)
      expect(acc.history[0].withdrawal).to eq(true)
      expect(acc.history[0].withdrawal).not_to eq(false)
    end

    it 'should define deposit as true and withdrawal as false' do
      acc.create_transaction(amount: 0)
      expect(acc.history[0].deposit).to eq(false)
      expect(acc.history[0].deposit).not_to eq(true)
      expect(acc.history[0].withdrawal).to eq(false)
      expect(acc.history[0].withdrawal).not_to eq(true)
    end
  end

  describe '#create_statement' do
    it 'should print the heading of a table' do
      expect(acc.create_statement).to be_a(Statement)
    end

  describe '#account_balance' do
    it 'should have a zero balance before any transactions' do
      expect(acc.account_balance).to eq(0)
    end

    it 'should increase the balance after a deposit' do
      acc.create_transaction(amount: 100)
        expect(acc.account_balance).to eq(100)
      end
    end

    it 'should reduce the balance after a withdrawal' do
      acc.create_transaction(amount: -100)
        expect(acc.account_balance).to eq(-100)
    end
  end
end
