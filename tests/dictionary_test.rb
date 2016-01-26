require 'test_helper'
require 'dictionary'

class DictionaryTest < Minitest::Test
	def test_dictionary
		word = "cat"

		assert_equal(true,valid_word?(word))
	end
end