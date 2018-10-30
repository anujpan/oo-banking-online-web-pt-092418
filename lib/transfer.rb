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
    if @status == "pending" && @sender.valid? && @sender.balance > @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if @status == "complete" && @sender.valid? && @sender.balance > @amount
      @receiver.balance -= @amount
      @sender.balance += @amount
      @status = "reversed"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end
