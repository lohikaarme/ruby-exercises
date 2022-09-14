# game logic and win/lose conditions
# frozen_string_literal: true

# comment here?
class Game
  attr_accessor :turn, :game, :board, :legal

  def initialize(init_obj)
    @game = true
    @board = [
      [init_obj, init_obj, init_obj],
      [init_obj, init_obj, init_obj],
      [init_obj, init_obj, init_obj]
    ]
    @legal = false
  end

  def update_board(player)
    @board[@row][@column] = player
  end

  def location_mapper(location)
    @row = (location / 3.0).ceil - 1
    @column = location - (@row * 3) - 1
  end

  def legal_move(input)
    location_mapper(input)
    @legal = true if @board[@row][@column][:legal_move] == true
    if @legal
    else
      puts "\n---------------------------------------------"
      puts "| Position #{input} is an illegal move, try again! |"
      puts '---------------------------------------------'
    end
  end

  def row_checker(player)
    @board.each { |row| p row[0] == player && row.uniq.size == 1 }
  end
end
