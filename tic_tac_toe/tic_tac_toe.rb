# frozen_string_literal: true

# tic_tac_toe exercise to create a 2 player game playable in terminal

require 'pry-byebug'
require_relative 'game'
require_relative 'player'
require_relative 'render'

# binding.pry

tic_tac_toe = Game.new
players = Player.new

p tic_tac_toe.game
p players

while tic_tac_toe.game
  players.player_move
  tic_tac_toe.update_board(players.move)
  

  tic_tac_toe.game = false
end
