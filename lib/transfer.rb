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
    binding.pry
    self.sender.status == "open" && self.receiver.status == "open" ? true : false
  end
end
