# ex1.rb

# Ben is right. 'balance' is a getter method defined automatically
# because of the flag 'attr_reader'

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end