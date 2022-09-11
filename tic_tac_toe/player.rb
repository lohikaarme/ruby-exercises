# frozen_string_literal: true
class Player
  def player_move
    i = true
    while i
      p "#{Game.turn} it is your turn, place your symbol (0-9):"
      begin
        @move = Kernel.gets.match(/\d{1}/)[0]
      rescue StandardError
        puts 'Erroneous input! Try again...'
      else
        i = false
      end
    end
  end
end