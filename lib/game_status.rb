# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    win_index_1 = win[0]
    win_index_2 = win[1]
    win_index_3 = win[2]
    
    pos1 = board[win_index_1]
    pos2 = board[win_index_2]
    pos3 = board[win_index_3]
    
    if (pos1 == pos2 && pos2 == pos3) && pos1 != " "
      return win 
    else
    end
  end
  return false
end

def full?(board)
  board.each do |value|
    if value == " "
      return false
    end
  end
  return true 
end

def draw?(board)
  if won?(board) == false
    if full?(board) == true
      return true
    end
  end
  return false
end
    
