require 'pry'
require 'Account'

describe 'Acccount ' do
  before do  
  Timecop.freeze(Time.new(1982, 7 , 9))
  end

  describe '#deposit' do
    it 'allows you to deposit amounts' do
      my_account = Account.new
      my_account.deposit(100)
      expect(my_account.account_balance).to eq(100)
    end

    it 'deposit different values' do
      my_account = Account.new
      my_account.deposit(200)
      expect(my_account.account_balance).to eq(200)
    end

    it 'deposit multiple times' do
      my_account = Account.new
      my_account.deposit(200)
      my_account.deposit(100)
      expect(my_account.account_balance).to eq(300)
    end

    it 'negative deposits are actually withdrawls' do
      my_account = Account.new
      my_account.deposit(100)
      my_account.deposit(-100)
      expect(my_account.account_balance).to eq(0)
    end
    
    it 'shows balance after a deposit' do
      my_account = Account.new
      expect(my_account.deposit(200)).to eq(200)
    end
  end

  describe '#withdrawal' do
    it 'allows withdrawals' do
      my_account = Account.new
      my_account.deposit(150)
      my_account.withdrawal(100)
      expect(my_account.account_balance).to eq(50)
    end

    it 'allows multiple withdrawals' do
      my_account = Account.new
      my_account.deposit(150)
      my_account.withdrawal(100)
      my_account.withdrawal(25)
      expect(my_account.account_balance).to eq(25)
    end

    it 'negative withdrawls are actually credits' do
      my_account = Account.new
      my_account.deposit(150)
      expect(my_account.withdrawal(-100)).to eq(250)
    end

    it 'shows balance after a withdrawal' do
      my_account = Account.new
      my_account.deposit(150)
      expect(my_account.withdrawal(100)).to eq(50)
    end
  end

  describe '#statement' do
    it 'includes a heading' do
      my_account = Account.new
      expect(my_account.statement_heading).to include('date || credit || debit || balance')
    end

    it 'includes the transactions' do
      my_account = Account.new
      my_account.deposit(100)
      expect(my_account.statement_body).to eq('09/07/1982 || 100.00 || 0.00 || 100.00')
    end

    it 'includes multiple transactions that are added up' do
      my_account = Account.new
      my_account.deposit(100)
      my_account.deposit(75)
      expect(my_account.statement).to eq("09/07/1982 || 100.00 || 0.00 || 100.00\n09/07/1982 || 75.00 || 0.00 || 175.00" )
    end

    it 'both deposit and withdrawls that are added up' do
      my_account = Account.new
      my_account.deposit(100)
      my_account.deposit(50)
      my_account.withdrawal(50)
      expect(my_account.statement).to eq("09/07/1982 || 100.00 || 0.00 || 100.00\n09/07/1982 || 50.00 || 0.00 || 150.00\n09/07/1982 || 0.00 || 50.00 || 100.00" )
    end
  end

  after do
    Timecop.return
  end
end