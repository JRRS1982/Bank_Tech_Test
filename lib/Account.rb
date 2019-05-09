require './lib/Transaction.rb'

# this is the master class, for making statements and transactions.
class Account

  def initialize
    @transaction_history = []
  end

  def create_transaction(amount:, deposit:, date: Time.now)
    tran = Transaction.new(amount: amount,deposit: deposit, date: date)
    @transaction_history << tran
  end

end
