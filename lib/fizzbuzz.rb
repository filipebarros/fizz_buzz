# frozen_string_literal: true

class FizzBuzz
  def initialize(number)
    @number = number
  end

  def self.for(number)
    new(number).for
  end

  def for
    calculate
  end

  private

  attr_reader :number

  def calculate
    if (number % 15).zero?
      'FizzBuzz'
    elsif (number % 5).zero?
      'Buzz'
    elsif (number % 3).zero?
      'Fizz'
    else
      number.to_s
    end
  end
end
