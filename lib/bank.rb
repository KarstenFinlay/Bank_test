class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def withdraw(money)
    "You withdrew £#{money}"
  end

  def deposit(money)
    "You deposited £#{money}"
  end

end