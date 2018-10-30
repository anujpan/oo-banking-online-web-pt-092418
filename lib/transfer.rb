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
    @status = "complete"
    @sender.balance -= @amount
    @receiver.balance += @amount
    binding.pry
  end
end
