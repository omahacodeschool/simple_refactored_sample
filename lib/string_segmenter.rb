require 'dictionary'

def segment_string(str)
#1. create an array to store words
	arr = []
#2. loop over the first character and check if it's a word according to dictionary.rb
	str.each do |n|
	#check if character 1 is word
	if valid_word?(n)
		#if it is, store it in the last place of the array
			arr[-1] << n
	#if it's not a word, add the next character in the string and check again
	elsif !valid_word?(n)
		n=n+n(1)
		if valid_word?(n)
			arr[-1] << n
		elsif !valid_word?(n)
			#go back to the n=n+n(1)
	end
		
	end
	return arr
end


#1. create an array to store words

#3. loop over the first character and check if it's a word according to dictionary.rb

#4. if you check it and it's not a word, add the next character to the current one, then redo check-if-word, until you find a word

#5. when you find a group of characters that is a word, store said group in the array, then 

#6. start with the next character and check if that's a word, if not add the next character and check again, repeat

#7. if you haven't found another word despite looping over the remaining characters, go back to the beginning and start over

#8. this time, don't stop after you find the first word. wait until you find the second word, then store it in the array over the original first word,

#9. start with the next character and check if that's a word, if not add the next character and check again, repeat

#10.if you haven't found another word despite looping over the remaining characters, go back to the beginning of the second word and do step 8 again

#11.when you've iterated through all the characters and they are each in a word that is stored in the array, return that array
