# frozen_string_literal: true

class FizzBuzz
  RULES = [[3, 'Fizz'], [5, 'Buzz']].freeze

  def self.for(number)
    result = RULES.each_with_object(+'') do |(divisor, word), output|
      output << word if (number % divisor).zero?
    end

    result.empty? ? number.to_s : result
  end
end
