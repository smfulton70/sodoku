# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
def solve(board_string)

	convert_to_array(board_string)

end

# Returns a boolean indicating whether
# or not the provided board is solved.
# The input board will be in whatever
# form `solve` returns.
def solved?(board)
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

# Identifies the cells in each column and returns elements of each column
def column_identify(array, column_number)
  columns = []
  array.each_index do |cell|
    if column_number == cell % 9
      columns << array[cell]
    end
  end
  columns
end

# Driver code to test column_identify method
#my_array = convert_to_array("1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--")

#p column_identify(my_array,8)



