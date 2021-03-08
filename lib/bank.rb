class Bank

  attr_reader :balance

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def withdraw(money)
    "You withdrew £#{money}"
  end

  def deposit(money)
    "You deposited £#{money}"
  end

end