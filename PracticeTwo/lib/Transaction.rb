class Transaction
  attr_reader :value, :debit, :credit

  def initialize(value:, 
                 debit:, 
                 credit:, 
                 date_created: Time.new
                 )
    @value = value
    @date_created = date_created
    @debit = debit
    @credit = credit
  end

  def date
    formatted_date = @date_created.strftime("%d/%m/%Y")
    formatted_date
  end
end
