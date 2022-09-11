# frozen_string_literal: true

# player actions and inputs

class Player
  attr_accessor :move
  attr_reader :p1, :p2, :p1_sym, :p2_sym
  
  def initialize(p1_name = 'P1', p2_name = 'P2')
    @p1 = p1_name
    @p2 = p2_name
    @p1_sym = 'X'
    @p2_sym = 'O'
  end
  
  def player_move
    i = true
    while i
      p "it is your turn, place your symbol (0-9):"
      begin
        @move = Kernel.gets.match(/\d{1}/)[0].to_i
      rescue StandardError
        puts 'Erroneous input! Try again...'
      else
        i = false
      end
    end
  end
end