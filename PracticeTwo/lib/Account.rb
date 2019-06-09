require './lib/Transaction.rb'

class Account
  attr_accessor :account_balance
  attr_accessor :listing

  def initialize
    @listing = []
    @account_balance = 0
  end

  def deposit(value)
    @listing << Transaction.new(value)
    balance
  end

  def withdrawal(value)
    negative_value = value * -1
    @listing << Transaction.new(negative_value)
    balance
  end

  def balance
    @account_balance = 0
    @listing.each { |x| 
      @account_balance += x.value
    }
    @account_balance
  end

  def statement
    statement_heading
  end

  private

  def statement_heading
    return 'date || credit || debit || balance'
  end
end
