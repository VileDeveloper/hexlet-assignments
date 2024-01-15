# frozen_string_literal: true

# BEGIN
def reverse(string)
  string_array = []
  reverse_string = ''

  string.each_char do |char|
    string_array << char
  end

  string_array.reverse_each do |letter|
    reverse_string += letter
  end

  reverse_string
end
# END
