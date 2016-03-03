require "minitest/autorun"
require_relative "isbn_kata.rb"

class TestISBNKata <Minitest::Test

	def test_string_without_10_or_13_characters_result_false
		assert_equal(false, valid_isbn?(""))
		assert_equal(false, valid_isbn?("12345"))
		assert_equal(false, valid_isbn?("123456789"))
		assert_equal(false, valid_isbn?("1234567891011121314"))
	end

	def test_isbn_is_valid_returns_true
		assert_equal(true, valid_isbn?("0471958697"))
	end	


end	