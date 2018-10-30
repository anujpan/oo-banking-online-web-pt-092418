class BankAccount
  attr_reader :name, :balance, :status, :deposit
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
end
