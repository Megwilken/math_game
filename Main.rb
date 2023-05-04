require_relative 'Game'
require_relative 'IOManager'
require_relative 'Player'
require_relative 'Question'

game = Game.new(Player.new(player1_name), Player.new(player2_name))
game.start