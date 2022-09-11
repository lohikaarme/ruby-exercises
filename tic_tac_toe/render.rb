# frozen_string_literal: true

# printing to console
class Render
  def self.print_board(board)
    # p board[0]
    # p board[1]
    # p board[2]

    p "#{board[0][0][:symbol]} #{board[0][1][:symbol]} #{board[0][2][:symbol]}"
    p "#{board[1][0][:symbol]} #{board[1][1][:symbol]} #{board[1][2][:symbol]}"
    p "#{board[2][0][:symbol]} #{board[2][1][:symbol]} #{board[2][2][:symbol]}"
  end
end
