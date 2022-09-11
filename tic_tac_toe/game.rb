# frozen_string_literal: true


class Game
  attr_accessor :turn, :game

  def initialize(p1_name = 'P1', p2_name = 'P2')
    @game = true
    @p1 = p1_name
    @p2 = p2_name
    @p1_sym = 'X'
    @p2_sym = 'O'
    @turn = @p1
    p @p1
    p @p2
    p @turn
  end


end
