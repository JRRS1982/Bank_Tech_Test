require 'Bank'
require 'pry'

RSpec.describe 'Bank' do
  it "accepts deposits" do
  subject(:monzo) { Bank.new('monzo') }
  dosh = double(Money.new(100))
  monzo.deposit(dosh)
  expect(monzo.statement).to include(dosh)
  end
end
