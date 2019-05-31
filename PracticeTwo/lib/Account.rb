class Account
  attr_reader :account_balance

  def initialize
    @account_balance = 0
  end

  def deposit(amount)
    @account_balance += amount
  end

  def withdrawal(amount)
    @account_balance -= amount
  end

  def balance
    @account_balance
  end
end
