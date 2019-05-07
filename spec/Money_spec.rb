require 'Money'
require 'pry'

RSpec.describe 'Money' do
  subject(:dosh) { Money.new(100) }

  it "is an object" do
    expect(dosh.amount).to eq(100)
  end

end
