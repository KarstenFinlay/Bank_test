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
    @balance += money
    "You deposited £#{money}, your current balance is £#{balance}"
  end

end