# game logic and win/lose conditions
# frozen_string_literal: true

# comment here?
class Game
  # comment here?
  attr_accessor :turn, :game, :board

  def initialize
    @game = true
    @board = [
      [nil, nil, nil],
      [nil, nil, nil],
      [nil, nil, nil]
    ]

    p @game
    p @board
  end

  def update_board(location)
    puts "test"
    p row = (location/3.0).ceil - 1
    p column = location - (row * 3) - 1
    @board[row][column] = 'X'
    p @board
  end
end
