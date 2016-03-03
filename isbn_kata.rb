def delete_spaces_and_hyphens(isbn_input)	
	string_without_spaces = isbn_input.delete(" ")
	string_without_spaces_or_hyphens = string_without_spaces.delete("-")
end	

def valid_isbn?(isbn_input)
	string_without_spaces_or_hyphens = delete_spaces_and_hyphens(isbn_input)
	string_without_spaces_or_hyphens.length == 10
end	

