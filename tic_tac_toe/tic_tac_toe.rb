# frozen_string_literal: true

# tic_tac_toe exercise to create a 2 player game playable in terminal

require 'pry-byebug'
require_relative 'game'
require_relative 'player'
require_relative 'render'

# binding.pry

tic_tac_toe = Game.new
p tic_tac_toe.turn
p tic_tac_toe.game

while tic_tac_toe.game 

p 'this is a test'
  tic_tac_toe.Player::player_move


  tic_tac_toe.game = false
end
