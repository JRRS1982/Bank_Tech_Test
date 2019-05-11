require 'Statement'

describe 'Statement' do
  it 'should be an object' do
    sta = Statement.new(@transaction_history)
    expect(sta).to be_a(Statement)
  end

  it 'should print a statement heading' do
    sta = Statement.new(@transaction_history)
    expect(sta.statement_heading).to eq('date || credit || debit || balance')
  end
end
