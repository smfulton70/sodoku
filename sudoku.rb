# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
def solve(board_string)

	final_array = convert_to_array(board_string)
	guess_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]


	# ______this should remove guesses from the guess array and ___
	# ______leave only possible numbers to solve the puzzle _______
	
	until solved?(final_array)
		final_array.each do |guesses|
			#removes a guesses from the guest_hash if number is in a cell's current row
			r_list = row_method(guesses, final_array)
				guesses.reject! {|guess| r_list.include?(guess)}
			#removes a guesses from the guest_hash if number is in a cell's current column
			c_list = column_method(guesses, final_array)
				guesses.reject! {|guess| c_list.include?(guess)}
			# replaces guesses in array if there is only one guess left
			final_array[guesses] = guess_array[guesses] if guess_array.length == 1
		end
	end
end

# Returns a boolean indicating whether
# or not the provided board is solved.
# The input board will be in whatever
# form `solve` returns.
	def solved?(board)
		if board.include?('0')
	  	return false
	  else
	  	return true
	  end
	end

# Takes in a board in some form and
# returns a _String_ that's well formatted
# for output to the screen. No `puts` here!
# The input board will be in whatever
# form `solve` returns.
def pretty_board(board)
end

# Helper Methods

 def convert_to_array(string)
  string.split('').map(&:to_i)
 end

def retrieve_row_from_9x9_table(table_array, row_number)
  row = []
  table_array.each_index do |i|
    if row_number == i/9
      row << table_array[i]
    end
  end
  row
end

def retrieve_column_from_9x9_table(table_array, column_number)
  column = []
  table_array.each_index do |i|
    if column_number == i%9
      column << table_array[i]
    end
  end
  column
end

#Added by Scott 6/24/17
def box_creation(array)	
box = Array.new(9) {Array.new}
	boxes = []
	counter = 0
	array_index = 0
		while counter < 9
		  	box[counter][0] = array[array_index]
		  	box[counter][1] = array[array_index+1]
		  	box[counter][2] = array[array_index+2]
		  	box[counter][3] = array[array_index+9]
		  	box[counter][4] = array[array_index+10]
		  	box[counter][5] = array[array_index+11]
		  	box[counter][6] = array[array_index+18]
		  	box[counter][7] = array[array_index+19]
		  	box[counter][8] = array[array_index+20]
		    	boxes << box[counter]
		    	counter += 1
		    	if counter == 3 || counter == 6
		      		array_index += 21
		    	else
		      		array_index += 3
		    	end
	  	end
	boxes
end
#End Scott's addition

# Driver code

test_string = "1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--"

#Added by Scott 6/24/17
box_creation(test_string)
#End Scott's addition

test_array = convert_to_array(test_string)

# row_0 = retrieve_row_from_9x9_table(test_array, 0)
# row_1 = retrieve_row_from_9x9_table(test_array, 1)
# row_8 = retrieve_row_from_9x9_table(test_array, 8)

# puts row_0
# puts row_1
# puts row_8

col_0 = retrieve_column_from_9x9_table(test_array, 0)

puts test_array[0]
puts test_array[9]
puts test_array[18]
puts '----'
puts col_0[0]
puts col_0[1]
puts col_0[2]
