require 'test_helper'
require 'string_segmenter'

class StringSegmenterTest < Minitest::Test
  def test_ing_words
  	str = "catrunningtrance"
    seg = Segment.new(str)

  	assert_equal(["cat", "running", "trance"], seg.final_words)
  end

  def test_plural_words
  	str = "catsrunningtrance"
    seg = Segment.new(str)

  	assert_equal(["cats", "running", "trance"], seg.final_words)
  end

  def test_compoundish_words
  	str = "publishcatrun"
    seg = Segment.new(str)

  	assert_equal(["publish", "cat", "run"], seg.final_words)
  end
  
  def test_simple
  	str = "catrun"
    seg = Segment.new(str)

  	assert_equal(["cat", "run"], seg.final_words)
  end
  
end