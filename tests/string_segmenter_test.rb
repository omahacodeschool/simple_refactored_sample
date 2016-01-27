require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  # def test_ing_words
  # 	str = "catrunningtrance"

  # 	assert_equal(["cat", "running", "trance"], segment_string(str))
  # end

  # def test_plural_words
  # 	str = "catsrunningtrance"

  # 	assert_equal(["cats", "running", "trance"], segment_string(str))
  # end

  # def test_compoundish_words
  # 	str = "publishcatrun"

  # 	assert_equal(["publish", "cat", "run"], segment_string(str))
  # end
  
    def test_simple
  	str = "catrun"

  	assert_equal(["cat", "run"], segment_string(str))
  end
end