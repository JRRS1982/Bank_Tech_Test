require 'Account'

# starting out with a pretty solid feature test
describe 'Account' do
  it 'allows us to add transactions to it' do 
    my_account = Account.new 
    my_account.deposit(100)
    expect(my_account.balance).to eq(100)
  end
end