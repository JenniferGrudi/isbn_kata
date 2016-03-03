require "minitest/autorun"
require_relative "isbn_kata.rb"

class TestISBNKata <Minitest::Test

	def test_string_without_10_or_13_characters_result_false
		assert_equal(false, valid_isbn?(""))
		assert_equal(false, valid_isbn?("12345"))
		assert_equal(false, valid_isbn?("123456789"))
		assert_equal(false, valid_isbn?("1234567891011121314"))
	end



end	