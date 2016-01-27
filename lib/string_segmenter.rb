require 'dictionary.rb'

def segment_string(str)
	#"catrun" --------
	puts "STARTING"
	#create array to store words & hash to store the location of the word
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
		#if charcter is not a word
		if !valid_word?(str[first_letter..last_letter])
			puts "#{str[first_letter..last_letter]} is not a word, so incrementing last_letter."
			#add one to the counter variable
			last_letter += 1
			#if it is a word
		else valid_word?(str[first_letter..last_letter])
			puts "#{str[first_letter..last_letter]} IS a word! So adding it to 'words'."
			#put word into the array and the word & index pair in a hash
			words << str[first_letter..last_letter]
			word_index[str[first_letter..last_letter]] = last_letter			
			puts "Okay, added it, and 'words' is now #{words}"
			#then move on to the next character
			first_letter = last_letter + 1
			last_letter += 1
		else !valid_word?(str[first_letter..last_letter]) && words.join.length < str.length
			puts "#{str[first_letter..last_letter]} is not a word and we're out of letters so lets go back to the beginning of the last word."
			#I need to find a way to select the second to max value, i think i need to create a new method called second_to_max
			first_letter = word_index.second-to-max{|k,v| v} +1 
			#next line is me attempting to take the value of the previous last letter and add one to it
			last_letter = word_index.max{|k ,v| v} +1
			#next line is me attempting to delete the key/value pair with highest value
			word_index.delete(word_index.max_by{|k,v| v})
		end
	end
	return words
end

	




#How to deal with dangling characters? ideas:
	#if there are dangling characters
	#if words.join.length < str.length
		#go back to:  while last_letter <= str.length do
			#but put the first_letter of the word with the highest last_letter and then add +1 to the previous last letter
			#(str[first_letter|r|..last_letter+1|n|]) => runn
			#then delete that key:value pair in the hash
	#if there are no dangling characters
	#elsif words.join.length == str.length


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