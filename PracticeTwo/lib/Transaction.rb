class Transaction
  attr_reader :value

  def initialize(value, date_created = Time.new)
    @value = value
    @date_created = date_created
  end

  def date
    formatted_date = @date_created.strftime("%d/%m/%Y")
    formatted_date
  end
end
