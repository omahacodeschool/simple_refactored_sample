require 'dictionary.rb'

def segment_string(str)
	puts "STARTING"

	#create array to store words
	words = []
	#create counter variable
	i = 0
	n = 0
	#while the variable is less than or equal to the string length, do the following operation
	while i <= str.length do 
		puts "i is currently #{i}"
		puts "n is currently #{n}"
		#for each character in the string, do the following
		#if charcter is not a word
		if !valid_word?(str.slice(n,i))
			puts "#{str.slice(n,i)} is not a word, so incrementing i."
			#add one to the counter variable
			i += 1
			#if n is a word
		elsif valid_word?(str.slice(n,i))
			puts "#{str.slice(n,i)} IS a word! So adding it to 'words'."
			#put n into the array
			words << str.slice(n,i)
			puts "Okay, added it, and 'words' is now #{words}"

			#then move on the the next character
			n = i
			i += 1
		end
	end
	return words
end





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
