def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
   
   puts " X | X | X " 
   puts "-----------"
   puts " X | O | O "
   puts "-----------"
   puts " X | O | X "
   puts "-----------"
   puts " O | X | X "
   puts "-----------"
   puts " O | X | O "
   end 
   
def input_to_index(move)
   index = move.to_i - 1
   index
  end
   
def valid_move?(board,index)
  index.to_i.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board,index)
  return false if [" ", "", nil].include?(board[index])
  return true if ["X", "O"].include?(board[index])
  raise "#{board[index]} is not a valid move"
end
  
 
    
 
