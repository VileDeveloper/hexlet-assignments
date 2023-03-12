# frozen_string_literal: true

# BEGIN
def anagramm_filter(reference_word, array)
  array.select do |word|
    reference_word.chars.sort == word.chars.sort
  end
end
# END
