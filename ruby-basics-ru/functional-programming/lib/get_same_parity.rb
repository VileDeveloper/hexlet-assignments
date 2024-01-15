# frozen_string_literal: true

# BEGIN
def get_same_parity(array)
  is_even = array.first&.even?

  array.select { |item| item.even? == is_even }
end
# END
