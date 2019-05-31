require 'Account'

describe 'Acccount ' do
  describe '#deposit' do
    it 'allows you to deposit amounts' do
      my_account = Account.new
      my_account.deposit(100)
      expect(my_account.balance).to eq(100)
    end

    it 'allows you to deposit different values' do
      my_account = Account.new
      my_account.deposit(200)
      expect(my_account.balance).to eq(200)
    end
  end

  describe '#withdrawal' do
    it 'allows withdrawals' do
      my_account = Account.new
      my_account.deposit(150)
      my_account.withdrawal(100)
      expect(my_account.balance).to eq(50)
    end
  end
end