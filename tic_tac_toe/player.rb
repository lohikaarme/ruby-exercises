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
    @turn = @p1
    @turn_num = 0
  end

  def player_move
    i = true
    while i
      p "#{@turn}, it is your turn, place your symbol (0-9):"
      begin
        @move = Kernel.gets.match(/\d{1}/)[0].to_i
      rescue StandardError
        puts 'Erroneous input! Try again...'
      else
        i = false
        turn_changer
      end
    end
  end

  def turn_changer
    @turn_num =
      if @turn_num.zero?
        1
      else
        0
      end
    players = [@p1, @p2]
    @turn = players[@turn_num]
    p @turn_num
  end
end
