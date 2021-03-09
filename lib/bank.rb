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
    @statement.push("#{@time.strftime("%d/%m/%Y")} || || £#{'%.2f' % money} || £#{'%.2f' % balance}")
    "You withdrew £#{'%.2f' % money} at #{@time.strftime("%d/%m/%Y")}, your current balance is £#{'%.2f' % balance}"
  end

  def deposit(money)
    @balance += money
    @statement.push("#{@time.strftime("%d/%m/%Y")} || £#{'%.2f' % money} || || £#{'%.2f' % balance}")
    "You deposited £#{'%.2f' % money} at #{@time.strftime("%d/%m/%Y")}, your current balance is £#{'%.2f' % balance}"
  end

  def bank_statement
    statement = @statement << "date || credit || debit || balance"
    statement = @statement.reverse.join("\n")
    puts statement
    @statement.pop
    statement
  end

end