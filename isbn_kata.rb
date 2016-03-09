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
		true
	else
		false	
	end
	isbn_array		
end	

def check_digit_10?(isbn_input)
 array = []
 isbn = contains_X(isbn_input)
	isbn.each do |value|
	array << value.to_i	
	end

 sum = 0
 array.each_with_index do |value, index|
 	break if index == 9
 	sum += value *(index + 1) #value*index + 1
 end

 checksum = sum%11

 	if checksum == 10 && isbn_input[9] =="X" || isbn_input[9] == "x"
 	 true
 	elsif 
 	 false
 	end 
end	

def check_digit_13?(isbn_input)
 array = []		
 isbn_13_array = isbn_input.split(//,)
 isbn_13_array.each do |value|
 	array << value.to_i
 end

 sum = 0
 array.each_with_index do |value, index|
 	break if index == 12
 	if sum += value * 1
 	else 
		sum += value * 3	 		
 	end	

 end

 checksum_13 = sum%10 
 check_digit = 10 - checksum_13
 sum = check_digit%10

 isbn_input[12].to_i == check_digit


end 



		
