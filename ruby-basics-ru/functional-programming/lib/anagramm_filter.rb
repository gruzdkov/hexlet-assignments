# frozen_string_literal: true

# BEGIN
def sort_letters_in_word(word)
  word.split('').sort.join('')
end

def anagramm_filter(ref_word, words)
  ref_word_sorted = sort_letters_in_word(ref_word);

  words.filter { |word| sort_letters_in_word(word) == ref_word_sorted }
end
# END
