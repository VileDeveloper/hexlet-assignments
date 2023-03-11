# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  censor_word = '$#%!'
  splitted_text = text.split

  splitted_text.each_with_index do |word, index|
    if stop_words.include?(word)
      splitted_text[index] = censor_word
    end
  end

  splitted_text.join(' ')
  # END
end

# rubocop:enable Style/For
