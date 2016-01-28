require_relative '../lib/dictionary.rb'

def segment_string(str)
  words = []

  word_index = Hash.new(0)

  first_letter= 0
  last_letter = 0
  
  while last_letter <= str.length do  
    part_of_word = str[first_letter..last_letter]

    if danglers?(str, first_letter, last_letter, words)
      last_letter = index_of_most_recently_found_word(word_index) + 1

      words.delete(most_recently_found_word(word_index))

      word_index.delete(most_recently_found_word(word_index))

      if index_of_most_recently_found_word(word_index) == nil
        first_letter = 0
      else 
        first_letter = index_of_most_recently_found_word(word_index) + 1 
      end

    elsif !valid_word?(part_of_word)
      last_letter += 1

    elsif valid_word?(part_of_word)
      words << part_of_word

      word_index[part_of_word] = last_letter      

      first_letter = last_letter + 1
      last_letter += 1
    end
  end

  return words
end

# Checks if there are danglers at the end of the string.
# 
# str - Entire String that's being segmented.
# first_letter - Integer index of the first letter from str that'll begin the section of str that's being checked.
# last_letter - Integer index of last letter from str.
# words - Array with words that have been identified so far.
# 
# Returns Boolean.
def danglers?(str, first_letter, last_letter, words)
  !valid_word?(str[first_letter..last_letter]) && last_letter == str.length && words.join.length < str.length
end

# Get the list of words that have been found so far.
# 
# words_with_their_index - Hash with word as key and its position as value.
# 
# Returns Array of words.
def found_words(words_with_their_index)
  words_with_their_index.keys
end

# Get position of most recently found word.
# 
# words_with_their_index - Hash with word as key and its position as value.
# 
# Returns Integer.
def index_of_most_recently_found_word(words_with_their_index)
  words_with_their_index.values.max
end

# Get the most recently added word.
# 
# words_with_their_index - Hash with word as key and its position as value.
# 
# Returns the word as a String.
def most_recently_found_word(words_with_their_index)
  i = index_of_most_recently_found_word(words_with_their_index)
  words_with_their_index.key(i)
end