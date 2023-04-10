# frozen_string_literal: true

# Return "Fizz" if the number is divisible by 3,
# Return "Buzz" if the number is divisible by 5,
# Return "FizzBuzz" if the number is divisible by both 3 and 5.
# Return the number if the number is not divisible by 3 or 5
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
      "FizzBuzz"
    elsif (number % 5).zero?
      "Buzz"
    elsif (number % 3).zero?
      "Fizz"
    else
      number.to_s
    end
  end
end
