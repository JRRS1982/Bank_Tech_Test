class Account

  def initialize
    @account_balance = 0
  end

  def deposit(amount)
    @account_balance += amount
  end

  def balance
    @account_balance
  end
end
