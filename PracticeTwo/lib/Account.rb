require './lib/Transaction.rb'

class Account
  attr_accessor :account_balance
  attr_accessor :listing

  def initialize
    @listing = []
    @account_balance = 0
  end

  def deposit(value)
    if value >= 0
      credit = true
      debit = false
    else
      debit = true
      credit = false
    end
    
    @listing << Transaction.new(value: value, credit: credit, debit: debit)
    balance
  end

  def withdrawal(value)
    if value >= 0
      credit = false
      debit = true
    else
      debit = false
      credit = true
    end

    negative_value = value * -1
    @listing << Transaction.new(value: value, credit: credit, debit: debit)
    balance
  end

  def balance
    @account_balance = 0
    @listing.each { |x| 
      if x.credit == true 
        @account_balance += x.value
      else
        @account_balance -= x.value
      end  
    }
    @account_balance
  end

  def statement_body
    @listing.map do |tr|
      if tr.credit == true
        do_this = tr.value
        do_that = 0
      else
        do_this = 0
        do_that = tr.value
      end

      "#{tr.date} || #{"%0.2f"%[do_this]} || #{"%0.2f"%[do_that]} || #{"%0.2f"%[@account_balance]}"
    end.join("\n")
  end

  def statement_heading
    'date || credit || debit || balance\n'
  end  
end
