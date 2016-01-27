require 'dictionary.rb'

def segment_string(str)
	puts "STARTING"
	#create array to store words
	words = []
	word_index = {}
	#create counter variables
	first_letter= 0
	last_letter = 0
	#while the variable is less than or equal to the string length, do the following operation
	while last_letter <= str.length do 
		puts "\n\n---------------------------------"
		puts "first_letter is currently #{first_letter}"
		puts "last_letter is currently #{last_letter}"
		#for each character in the string, do the following
		#if charcter is not a word
		if !valid_word?(str[first_letter..last_letter])
			puts "#{str[first_letter..last_letter]} is not a word, so incrementing last_letter."
			#add one to the counter variable
			last_letter += 1
			#if n is a word
		elsif valid_word?(str[first_letter..last_letter])
			puts "#{str[first_letter..last_letter]} IS a word! So adding it to 'words'."
			#put n into the array
			words << str[first_letter..last_letter]
			word_index[str[first_letter..last_letter]] = last_letter			
			puts "Okay, added it, and 'words' is now #{words}"
			#then move on the the next character
			first_letter = last_letter + 1
			last_letter += 1
		end
	end
	#if there are dangling characters
	#if words.join.length < str.length
		#go back to 
	#if there are no dangling characters
	#if words.join.length == str.length
	return words
end




#ORIGINAL CONCEPT

#{}"catrun" 

#1. create a hash to store words

#3. loop over the first character and check if it's a word according to dictionary.rb

#4. if you check it and it's not a word, add the next character to the current one, then redo check-if-word, until you find a word

#5. when you find a group of characters that is a word, store said group in the array, then 

#6. start with the next character and check if that's a word, if not add the next character and check again, repeat

#7. if you haven't found another word despite looping over the remaining characters, go back to the beginning and start over

#8. this time, don't stop after you find the first word. wait until you find the second word, then store it in the array over the original first word,

#9. start with the next character and check if that's a word, if not add the next character and check again, repeat

#10.if you haven't found another word despite looping over the remaining characters, go back to the beginning of the second word and do step 8 again

#11.when you've iterated through all the characters and they are each in a word that is stored in the array, return that array
