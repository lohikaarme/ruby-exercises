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

  def win_checker(player)
    row_checker(@board, player)
    column_checker(@board, player)
    diagonal_checker(@board, player)
  end

  def row_checker(board, player)
    board.each { |row| puts "#{player[:name]} Wins" if row[0] == player && row.uniq.size == 1 }
  end

  def column_checker(board, player)
    row_checker(board.transpose, player)
  end

  def diagonal_checker(board, player)
    slash = [
      [board[0][0], board[1][1], board[2][2]],
      [board[2][0], board[1][1], board[0][2]]
    ]
    row_checker(slash, player)
  end
end
