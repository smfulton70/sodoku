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
		guess_array.each do |guesses|
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


