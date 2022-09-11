# frozen_string_literal: true

# game logic and win/lose conditions

class Game
  attr_accessor :turn, :game, :board

  def initialize()
    @game = true
    @board = [
       [nil,nil,nil],
       [nil,nil,nil],
       [nil,nil,nil],
    ]

    p @game
    p @board
  end


end
