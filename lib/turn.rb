def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
  return converted_input
end

def move(board, index, current_player = "X")
  board[index] = current_player
  return board

end

  def position_taken?(array, slot)
    if array[slot] == " " || array[slot] == "" || array[slot] == nil
    return false
  else
    return true
    end
  end

    
 def on_board?(num)   
    if gets.strip.to_i - 1 == num.between?(0, 8)
    return true
    else
    return false
    end
 end
 
 def valid_move?(board, index)
   if index.between?(0, 8) && !position_taken?(board, index)
  return true
 else
  return false
  end
  
end


def turn(board)
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   if valid_move?(board, index)
     move(board, index, current_player = "X")
   display_board(board) 
   else turn(board)
  end
  
end
