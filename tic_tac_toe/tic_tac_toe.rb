# frozen_string_literal: true

# tic_tac_toe exercise to create a 2 player game playable in terminal

require 'pry-byebug'
require_relative 'game'
require_relative 'player'
require_relative 'render'

# binding.pry

tic_tac_toe = Game.new
players = Player.new

while players.turn_num <= 9
  unless tic_tac_toe.legal
    Render.print_board(tic_tac_toe.board)
    players.player_move
    tic_tac_toe.legal_move(players.move)
    redo
  end
  tic_tac_toe.update_board # (players.turn_sym)
  players.turn_changer
  tic_tac_toe.legal = false
  players.move = nil
end
tic_tac_toe.game = false
