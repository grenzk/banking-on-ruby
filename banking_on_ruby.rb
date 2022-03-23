# frozen_string_literal: true

# A program that display balances and transfer funds.
class Account
  attr_reader :name, :balance

  def initialize(name, balance = 100)
    @name = name
    @balance = balance
  end
end
