require_relative "./tictactoe/cell.rb"
require_relative "./tictactoe/player.rb"
require_relative "./tictactoe/board.rb"
require_relative "./tictactoe/game.rb"
require_relative "./tictactoe/core_extension.rb"

module Tictactoe
  puts "========================================="
  puts "              TIC TAC TOE                "
  puts "========================================="
  puts "Whats the name of player 1?"
  player1 = Tictactoe::Player.new({name: gets.chomp, sign:'o'})
  puts "Whats the name of player 2?"
  player2 = Tictactoe::Player.new({name: gets.chomp, sign:'x'})
  players = [player1, player2]
  Tictactoe::Game.new(players).play
end
