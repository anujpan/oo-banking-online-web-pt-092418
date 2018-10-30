require 'pry'

class Transfer
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    # sender.status == "open" && receiver.status == "open" ? true : false
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    binding.pry
    if @status == "pending" && self.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      
    end
    # binding.pry
  end
end
