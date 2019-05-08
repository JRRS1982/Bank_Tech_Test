require 'Transaction'
require 'Timecop'

# describe 'Transaction' do
#   it 'should be an object' do
#     this = Transaction.new
#     expect(this).to be_a(Transaction)
#   end
# end

# describe 'Transaction' do
#   it 'should have an amount' do
#     this = Transaction.new(amount: 100)
#     expect(this).to have_attributes(amount: 100)
#   end
# end

# describe 'Transaction' do
#   it 'should have an amount and a deposit' do
#     this = Transaction.new(amount: 100, deposit: true)
#     expect(this).to have_attributes(amount: 100, deposit: true)
#   end
# end

describe 'Transaction' do
  it 'receives amount, deposit and date' do
    testdate = '11-09-2001'
    tran = Transaction.new(amount: 100, deposit: true, date: testdate)
    expect(tran).to have_attributes(amount: 100, deposit: true, date: '11-09-2001')
  end
end
