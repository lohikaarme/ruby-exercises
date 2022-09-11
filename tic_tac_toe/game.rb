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
  end

  def update_board(location)
    row = (location/3.0).ceil - 1
    column = location - (row * 3) - 1
    @board[row][column] = 'X'
  end
end
