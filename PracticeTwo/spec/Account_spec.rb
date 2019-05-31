require 'Account'

describe 'Acccount' do
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