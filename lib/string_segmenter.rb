require_relative '../lib/dictionary.rb'

def segment_string(str)
	puts "STARTING"
	#create array to store words
	words = []
	#create a hash to store the location of the word
	word_index = Hash.new(0)
	#create variables to save the index of the first letter currently in use and the index of the last letter currently in use
	first_letter= 0
	last_letter = 0
	#while the variable is less than or equal to the string length, do the following operation
	while last_letter <= str.length do
		puts "\n\n---------------------------------"
		puts "first_letter is currently #{first_letter}"
		puts "last_letter is currently #{last_letter}"
	
		#if the current collection of characters is not a word
		#AND if the current value of last_letter is the same as the value of the length of the string
		#AND if the length of the joined array is less than the length of the original string
		# -- do the following
		if !valid_word?(str[first_letter..last_letter]) && last_letter == str.length && words.join.length < str.length
			puts "#{str[first_letter..last_letter]} is not a word and we're out of letters so lets go back to the beginning of the last word."
			#Take the value of the previous last letter and add one to it
			last_letter = word_index.values.max + 1
			puts "this is the #{last_letter}"
			#Delete the word from array
			words.delete(word_index.key(word_index.values.max))
			#Delete the key/value pair with highest value
			word_index.delete(word_index.max_by{|k,v| v}[0])
			puts "here is my current hash #{word_index}"
			#Take the value of the previous word's last letter and add 1
			# But if there is no previous word, then you need to start over at 0
			if word_index.values.max == nil
				first_letter = 0
			else 
				first_letter = word_index.values.max + 1 
			end
			puts "this is the #{first_letter}"

		#if the current collection of characters is not a word
		elsif !valid_word?(str[first_letter..last_letter])
			puts "#{str[first_letter..last_letter]} is not a word, so incrementing last_letter."
			#add one to the last_letter variable
			last_letter += 1

			#if the collection of characters is a word
		elsif valid_word?(str[first_letter..last_letter])
			puts "#{str[first_letter..last_letter]} IS a word! So adding it to 'words'."
			#put word into the array and the word & index pair in the hash
			words << str[first_letter..last_letter]
			word_index[str[first_letter..last_letter]] = last_letter			
			puts "Okay, added it, and 'words' is now #{words}"
			#then move on to the next character by reassigning the last_letter +1 to the first_letter spot
			#and adding one to the last_letter
			first_letter = last_letter + 1
			last_letter += 1
		end
	end
	return words
end
