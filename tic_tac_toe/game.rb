# game logic and win/lose conditions
# frozen_string_literal: true

# comment here?
class Game
  attr_accessor :turn, :game, :board, :legal

  def initialize(init_obj)
    @game = true
    @board = [
      [init_obj, init_obj, init_obj],
      [init_obj, init_obj, init_obj],
      [init_obj, init_obj, init_obj]
    ]
    @legal = false
  end

  def update_board(player)
    @board[@row][@column] = player
  end

  def location_mapper(location)
    @row = (location / 3.0).ceil - 1
    @column = location - (@row * 3) - 1
  end

  def legal_move(input)
    location_mapper(input)
    @legal = true if @board[@row][@column][:legal_move] == true
  end
end
