class Account
  attr_reader :account_balance

  def initialize
    @account_balance = 0
  end

  def deposit(amount)
    @account_balance += amount
    @account_balance
  end

  def withdrawal(amount)
    @account_balance -= amount
    @account_balance
  end

  def balance
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
