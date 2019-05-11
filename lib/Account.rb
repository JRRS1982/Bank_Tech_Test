require './lib/Transaction.rb'
require './lib/Statement.rb'

# this is the master class, for making statements and transactions.
class Account

  def initialize
    @transaction_history = []
    @balance = 0
  end

  def history
    @transaction_history
  end

  def account_balance
    @balance
  end

  def create_transaction(amount:)
    @balance += amount
    date = Time.now
    if amount > 0
      deposit = true
      withdrawal = false
    elsif amount < 0
      deposit = false
      withdrawal = true
    else
      deposit = false
      withdrawal = false
    end
    tran = Transaction.new(amount: amount,
                           deposit: deposit,
                           withdrawal: withdrawal,
                           date: date)
    @transaction_history << tran
  end

  def create_statement
    sta = Statement.new(@transaction_history)
  end
end
