require 'Statement'

describe 'Statement' do
  it 'should be an object' do
    sta = Statement.new
    expect(sta).to be_a(Statement)
  end
end