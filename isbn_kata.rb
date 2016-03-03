def valid_isbn?(isbn_input)
	string_without_spaces = isbn_input.delete(" ")
	string_without_spaces.length == 10

end		