# frozen_string_literal: true

# printing to console
class Render
  def self.print_board(board)
    p board[0]
    p board[1]
    p board[2]

    p "#{board[0][0]} #{board[0][1]} #{board[0][2]}"
  end
end
