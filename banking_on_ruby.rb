# frozen_string_literal: true

# A program that display balances and transfer funds.
class Account
  attr_reader :name, :balance

  def initialize(name, balance = 100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
    if pin == pin_number
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin == pin_number
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    'Access denied: incorrect PIN.'
  end
end

checking_account = Account.new("Grenzk", 500)