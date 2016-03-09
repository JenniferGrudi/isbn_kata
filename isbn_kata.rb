def delete_spaces_and_hyphens(isbn_input)	
	string_without_spaces = isbn_input.delete(" ")
	string_without_spaces_or_hyphens = string_without_spaces.delete("-")
end	

def valid_isbn?(isbn_input)
	string_without_spaces_or_hyphens = delete_spaces_and_hyphens(isbn_input)
	string_without_spaces_or_hyphens.length == 10
end

def contains_X(isbn_input)
	isbn_array = isbn_input.split(//,)

	if isbn_array[9] == "x" || isbn_array[9] == "X"
		isbn_array[9] == 10
	end
	isbn_array		
end	

