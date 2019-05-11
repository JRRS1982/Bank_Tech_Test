# this simply takes the transactions from account and formats / prints.
class Statement
  attr_reader :statement_input

  def initialize(transaction_history)
    @statement_input = transaction_history
  end

  def statement_heading
    heading = 'date || credit || debit || balance'
    heading
  end
end
