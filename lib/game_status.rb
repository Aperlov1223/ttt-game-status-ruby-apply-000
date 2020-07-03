# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2], # top_row
[3,4,5], # middle_row
[6,7,8], # bottom_row
[0,3,6], # left_column
[1,4,7], # center_column
[2,5,8], # right_column
[0,4,8], # left_diagonal
[6,4,2] # right_diagonal
]

def won?(board)
  if !won?(board)
     return nil
   else WIN_COMBINATIONS.each do |win_combo|
     if check_win_combination?(board, 'X', win_combo)
       return 'X'
     elsif check_win_combination?(board, 'O', win_combo)
       return 'O'
     end
   end
 end
 end

def full?(board)
   board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
   if !won?(board) && full?(board)
     return true
   elsif !won?(board) && !full?(board)
     return false
   else won?(board)
     return false
   end
end

def over?(board)
   if draw?(board) || won?(board) || full?(board)
     return true
   end
 end

def over?(board)
   if draw?(board) || won?(board) || full?(board)
     return true
   end
end

def winner(board)
   if won?(board)
      return board[won?(board)[0]]
   end
end
