require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  # Your test methods go here.
end

# Remember, the names of all test methods should begin with "test_".

#1. create a hash to store words
#2. split string into individual characters
#3. iterate over the first character and check if it's a word according to dictionary.rb
#4. if you check it and it's not a word, add the next character to the current one, then redo check-if-word, until you find a word
#5. when you find a group of characters that is a word, store said group in the hash with the value being the word and the key being a number(start with 1), then add the next character to the current one and redo check-if-word
#6. if that's a word, store said group in the hash in the same way, then add the next character to the current one and redo check-if-word, 
#7. keep adding one character and checking & storing-if-word until you've checked from the beginning of the string to the end

#8. starting at the second character in the string, complete the above steps 3-7
#9. repeat step 8 for third character, then fourth, and so on until you're done with all the characters

#10. create an empty array
#11. loop through hash and combine the value of key1 and key2 from the hash you created above 
#        (try all of the combinations of values, keeping them in numeric order of their keys, 
# 		for example you can combine the values for key 1, key 3, and key 4 but you can't combine 3, then 4, then 1
#13. if the joined contents of the array DO NOT match the contents of the str, empty the array and go back to step 11
#12. if the joined the contents of the array match the contents of the str, return the original array (pre-joining)
