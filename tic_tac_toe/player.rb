# frozen_string_literal: true

# player actions and inputs
class Player
  attr_accessor :move, :turn_num, :turn_sym, :turn, :p0
  attr_reader :p1, :p2, :p1_sym, :p2_sym

  def initialize(p1_name = 'Player1', p2_name = 'Player2')
    @p0 = {
      player: 0,
      name: 'player_0',
      sym: ' ',
      legal_move: true
    }
    @p1 = {
      player: 1,
      name: p1_name,
      sym: 'X',
      legal_move: false
    }
    @p2 = {
      player: 2,
      name: p2_name,
      sym: 'O',
      legal_move: false
    }
    @turn = @p1
    @turn_sym = @p1_sym
    @turn_num = 0
    @move = nil
  end

  def player_move
    i = true
    while i
      puts "#{@turn[:name]}, it is your turn, place your symbol (1-9):"
      begin
        @move = Kernel.gets.match(/\d{1}/)[0].to_i
      rescue StandardError
        puts "\n-------------------------------"
        puts '| Erroneous input, try again! |'
        puts '-------------------------------'
      else
        i = false
      end
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
