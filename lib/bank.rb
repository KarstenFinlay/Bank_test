class Bank

  attr_reader :balance, :time, :statement

  DEFAULT_BALANCE = 0

  def initialize()
    @balance = DEFAULT_BALANCE
    @time = Time.now
    @statement = []
  end

  def withdraw(money)
    fail "Insufficient funds" if balance - money < 0
    @balance -= money
    @statement.push("#{@time.strftime("%d/%m/%Y")} || #{money} || ")
    "You withdrew £#{money} at #{@time.strftime("%d/%m/%Y")}, your current balance is £#{balance}"
  end

  def deposit(money)
    @balance += money
    "You deposited £#{money} at #{@time.strftime("%d/%m/%Y")}, your current balance is £#{balance}"
  end

  def bank_statement
    return "date || credit || debit || balance\n
      #{@time.strftime("%d/%m/%Y")} || || 500.00 || 2500.00\n
      #{@time.strftime("%d/%m/%Y")} || 2000.00 || || 3000.00\n
      #{@time.strftime("%d/%m/%Y")} || 1000.00 || || 1000.00"
  end

end