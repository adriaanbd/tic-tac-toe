require_relative '../lib/tic_tac_toe.rb'

puts 'Welcome to our version of Tic tac Toe!'
maya = OurTicTacToe::Player.new('X', 'maya')
adriaan = OurTicTacToe::Player.new('O', 'adriaan')

players = [maya, adriaan]
OurTicTacToe::Game.new(players).play