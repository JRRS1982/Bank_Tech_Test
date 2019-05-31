require 'Statement'
require 'Account'
require 'pry'

describe 'Statement' do
  let(:account_hissy_fit) { double(Account.new) }
  let(:add_tran_100) { double(account_hissy_fit.create_transaction(amount: 100)) }
  let(:add_tran_200) { double(account_hissy_fit.create_transaction(amount: 200)) }
  let(:add_tran_minus_50) { double(account_hissy_fit.create_transaction(amount: -50)) }
  let(:statement_hissy_fit) { double(Statement.new(@transaction_history)) }

  describe '#statement_heading' do
    it 'should return a statement heading' do
      sta = Statement.new(@transaction_history)
      expect(sta.statement_heading).to eq('date || credit || debit || balance')
    end
  end

  describe '#statement_body' do
    it 'should return a statement body' do
      account_hissy_fit
      binding.pry
      add_tran_100
      expect(account_hissy_fit.statement).to include('date || credit || debit || balance')
    end
  end
end
