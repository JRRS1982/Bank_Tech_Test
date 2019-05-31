# this simply takes the transactions from account and formats / prints.

class Statement
  attr_reader :transaction_history

  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def statement_heading
    heading = 'date || credit || debit || balance'
  end

  def statement_body(transaction_history)
    transaction_history.each { |x| 
      puts x.amount
      puts x.methods
      }
  end

  def print 
    p statement_heading
    p statement_body(transaction_history)
  end

  print
end
