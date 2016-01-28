require_relative '../lib/dictionary.rb'

def segment_string(str)
	words = []

	word_index = Hash.new(0)

	first_letter= 0
	last_letter = 0

	while last_letter <= str.length do

		if !valid_word?(str[first_letter..last_letter]) && last_letter == str.length && words.join.length < str.length

			last_letter = word_index.values.max + 1

			words.delete(word_index.key(word_index.values.max))

			word_index.delete(word_index.max_by{|k,v| v}[0])

			if word_index.values.max == nil
				first_letter = 0
			else 
				first_letter = word_index.values.max + 1 
			end

		elsif !valid_word?(str[first_letter..last_letter])
			last_letter += 1
		elsif valid_word?(str[first_letter..last_letter])
			words << str[first_letter..last_letter]
			word_index[str[first_letter..last_letter]] = last_letter			

			first_letter = last_letter + 1
			last_letter += 1
		end
	end
	
	return words
end
