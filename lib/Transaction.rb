# this will go to the account as an object and holds the details of what happened.
class Transaction
  attr_reader :amount, :deposit, :date

  def initialize(amount:, deposit:, date:)
    @amount = amount
    @deposit = deposit
    @date = date
  end
end
