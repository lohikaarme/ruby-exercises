# frozen_string_literal: true

# player actions and inputs
class Player
  attr_accessor :move, :turn_num
  attr_reader :p1, :p2, :p1_sym, :p2_sym

  def initialize(p1_name = 'P1', p2_name = 'P2')
    @p1 = p1_name
    @p2 = p2_name
    @p1_sym = 'X'
    @p2_sym = 'O'
    @turn = @p1
    @turn_num = 0
    @move = nil
  end

  def player_move
    p "#{@turn}, it is your turn, place your symbol (0-9):"
    begin @move = Kernel.gets.match(/\d{1}/)[0].to_i
    rescue StandardError
      puts 'Erroneous input! Try again...'
    end
  end

  def turn_changer
    @turn =
      if @turn == @p1
        @p2
      else
        @p1
      end
    @turn_num += 1
  end
end
