# frozen_string_literal: true

# BEGIN
def fibonacci(number)
  return if number.negative?

  curr_number = 0
  next_number = 1

  number.times do
    curr_number, next_number = next_number, curr_number + next_number
  end

  curr_number
end
# END
