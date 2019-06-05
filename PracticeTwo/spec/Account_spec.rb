require 'Account'

describe 'Acccount ' do

  let(:today) { Date.new }

  describe '#deposit' do
    it 'allows you to deposit amounts' do
      my_account = Account.new
      my_account.deposit(100)
      expect(my_account.balance).to eq(100)
    end

    it 'deposit different values' do
      my_account = Account.new
      my_account.deposit(200)
      expect(my_account.balance).to eq(200)
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
      expect(my_account.balance).to eq(50)
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
      expect(my_account.statement).to include('date || credit || debit || balance')
    end
    
    it 'includes a heading' do
      my_account = Account.new
      expect(my_account.statement).to include('date || credit || debit || balance')
    end
  end
end