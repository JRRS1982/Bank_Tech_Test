require 'pry'

class Bank
  attr_reader :name

  @running_balance = []

  def initialize(name)
    @name = name
  end

  def deposit(money_in)
    @running_balance << money_in
  end

end
