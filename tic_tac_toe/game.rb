# game logic and win/lose conditions
# frozen_string_literal: true

# comment here?
class Game
  # comment here?
  attr_accessor :turn, :game, :board, :legal

  def initialize
    @game = true
    @board = [
      [nil, nil, nil],
      [nil, nil, nil],
      [nil, nil, nil]
    ]
    @legal = false
  end

  def update_board(input)
    @board[@row][@column] = 'X'
    p @board[@row][@column]
  end
  
  def location_mapper(location)
    @row = (location/3.0).ceil - 1
    @column = location - (@row * 3) - 1
  end
  
  def legal_move(input)
    location_mapper(input)
    @legal = @board[@row][@column].nil?
    p @legal
  end

  def legal_move
    @board[@row][@column].nil?
  end

end
