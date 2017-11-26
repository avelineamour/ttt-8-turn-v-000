#Define Empty Board with 9 Spaces
board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

#Displays the Board in the Tic Tac Toe Grid Format Like So:
#  |  |
#--------
#  |  |
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Take the Number the User Supplies and Subtracts One to == Corresponding Index
def input_to_index(userinput)
  userinput.to_i - 1
end

#Changes Empty Space on Board to X or O, Default Being X
def move(board, index, character = "X")
  board[index] = character
end

#Checks if Position is Empty Space or Has an X/O Already
def position_taken?(board, index)
   if board[index] == " " || board[index] == "" || board[index] == nil
     false
 else board[index] == "X" || board[index] == "O"
   true
 end
end

#Checks if Move(Input) is Valid Based on If Position is Taken OR Number is in Correct Range. (9 = index of 8)
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end
