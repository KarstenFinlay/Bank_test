class Bank

  attr_reader :balance, :time

  DEFAULT_BALANCE = 0

  def initialize()
    @balance = DEFAULT_BALANCE
    @time = Time.now
  end

  def withdraw(money)
    fail "Insufficient funds" if balance - money < 0
    @balance -= money
    "You withdrew £#{money} at #{@time.strftime("%d/%m/%Y")}, your current balance is £#{balance}"
  end

  def deposit(money)
    @balance += money
    "You deposited £#{money} at #{@time.strftime("%d/%m/%Y")}, your current balance is £#{balance}"
  end

end