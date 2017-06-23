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

# Driver code

test_string = "1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--"

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