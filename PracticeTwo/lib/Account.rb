require './lib/Transaction.rb'

class Account
  attr_accessor :account_balance
  attr_accessor :listing

  def initialize
    @listing = []
    @account_balance = 0
  end

  def deposit(value)
    new_balance = @account_balance += value

    if value >= 0
      credit = true
      debit = false
    else
      debit = true
      credit = false
    end
    
    @listing << Transaction.new(value: value, credit: credit, debit: debit)

    @account_balance = new_balance
    @account_balance
  end

  def withdrawal(value)
    new_balance = @account_balance -= value
    
    if value >= 0
      credit = false
      debit = true
    else
      debit = false
      credit = true
    end

    negative_value = value * -1
    @listing << Transaction.new(value: value, credit: credit, debit: debit)
    
    @account_balance = new_balance
    @account_balance
  end

  def statement
    statement_heading
    statement_body
  end

  def statement_body
    staged_balance = 0 
    @listing.map do |tr|
      if tr.credit == true
        staged_balance += tr.value
      else
        staged_balance -= tr.value
      end

      if tr.credit == true
        the_credit = tr.value
        the_debit = 0
      else
        the_credit = 0
        the_debit = tr.value
      end

      "#{tr.date} || #{"%0.2f"%[the_credit]} || #{"%0.2f"%[the_debit]} || #{"%0.2f"%[staged_balance]}"
    end.join("\n")
  end

  def statement_heading
    "date || credit || debit || balance"
  end  
end
