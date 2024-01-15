# frozen_string_literal: true

# BEGIN
def fizz_buzz_logic(number)
  return 'FizzBuzz' if (number % 3).zero? && (number % 5).zero?
  return 'Fizz' if (number % 3).zero?
  return 'Buzz' if (number % 5).zero?

  number.to_s
end

def fizz_buzz(start, stop)
  return if start > stop

  string = []

  (start..stop).each do |number|
    string << fizz_buzz_logic(number)
  end

  string.join(' ')
end
# END
