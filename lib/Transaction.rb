# this will go to the account as an object and holds the attributes.
class Transaction
  attr_reader :amount, :deposit, :withdrawal, :date

  def initialize(amount:, deposit:, withdrawal:, date:)
    @amount = amount
    @deposit = deposit
    @withdrawal = withdrawal
    @date = date
  end
end
