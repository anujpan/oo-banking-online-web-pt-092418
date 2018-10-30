class BankAccount
  attr_reader :name, :balance, :status
  attr_writer :deposit
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
end
