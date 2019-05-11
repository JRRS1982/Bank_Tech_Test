require 'Transaction'

describe 'Transaction' do
  it 'receives amount, deposit and date' do
    testdate = '11-09-2001'
    tran = Transaction.new(amount: 100,
                           deposit: true,
                           withdrawal: false,
                           date: testdate)
    expect(tran).to have_attributes(amount: 100,
                                    deposit: true,
                                    withdrawal: false,
                                    date: testdate)
  end
end
