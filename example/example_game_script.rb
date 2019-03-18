require_relative '../lib/tic_tac_toe.rb'

puts 'Welcome to our version of Tic tac Toe!'
maya = Player.new('X', 'maya')
adriaan = Player.new('O', 'adriaan')

players = [maya, adriaan]
Game.new(players).play
