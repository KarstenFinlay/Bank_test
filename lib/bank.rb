# frozen_string_literal: true

class Bank
  attr_reader :balance, :time, :statement

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @time = Time.now
    @statement = []
  end

  def withdraw(money)
    raise 'Insufficient funds' if debit(money).negative?
    @readable_time = @time.strftime('%d/%m/%Y')
    @readable_money = "#{'%.2f' % money}"
    @readable_balance = "#{'%.2f' % balance}"
    @statement.push("#{@readable_time} || || £#{@readable_money} || £#{@readable_balance}")
    withdraw_message
  end

  def deposit(money)
    credit(money)
    @readable_time = @time.strftime('%d/%m/%Y')
    @readable_money = "#{'%.2f' % money}"
    @readable_balance = "#{'%.2f' % balance}"
    @statement.push("#{@readable_time} || £#{@readable_money} || || £#{@readable_balance}")
    deposit_message
  end

  def bank_statement
    statement = @statement << 'date || credit || debit || balance'
    statement = @statement.reverse.join("\n")
    puts statement
    @statement.pop
    statement
  end

  private 

  def debit(amount)
    @balance -= amount
  end

  def credit(amount)
    @balance += amount
  end

  def withdraw_message
    "You withdrew £#{@readable_money} at #{@readable_time}, your current balance is £#{@readable_balance}"
  end

  def deposit_message
    "You deposited £#{@readable_money} at #{@readable_time}, your current balance is £#{@readable_balance}"
  end

end
