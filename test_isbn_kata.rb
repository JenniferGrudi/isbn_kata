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

	def test_valid_10_isbn_number_with_spaces_is_valid
		assert_equal(true, valid_isbn?("0 4719586 97"))
		assert_equal(true, valid_isbn?("047 19 586 97"))
	end	

	def test_spaces_do_not_add_to_string_lenght
		assert_equal(false, valid_isbn?("1234 5678 "))
	end	

	def test_valid_hyphens_returns_true
		assert_equal(true, valid_isbn?("047-19-586-97"))
	end	

	def test_valid_hyphens__and_spaces_return_true
	 	assert_equal(true, valid_isbn?("0 47-19-5 86-97"))
	end	

	def test_if_it_ends_in_X_will_equal_10
	 	assert_equal(true, valid_isbn?("877195869x"))
	end 

	def test_for_check_digit_10
		assert_equal(true, check_digit_10?("877195869x"))
	end	

	def test_for_check_digit_13
		assert_equal(true, check_digit_13?("9780470059029"))
		assert_equal(false, check_digit_13?("97804700059029"))
	end	

end	