require_relative 'lib/tic_tac_toe.rb'

puts "Welcome to our version of Tic tac Toe!\n"
puts 'Player 1 please enter your details'
puts 'Please enter your name'

x_o = false
player1_name = gets.chomp

# Make sure player enters X or O
while !x_o
	puts ''
	puts 'Please enter X or O'
	player1_turn = gets.chomp.capitalize
	x_o = player1_turn == 'X' || player1_turn == 'O' ? true : false
	puts ''
end

# Give player 2 opposite turn of player 1
player2_turn = player1_turn == 'X' ? 'O' : 'X'

puts "Player 2 please enter your name. You will be playing as #{player2_turn}"
player2_name = gets.chomp

player1 = OurTicTacToe::Player.new(player1_turn, player1_name)
player2 = OurTicTacToe::Player.new(player2_turn, player2_name)

players = [player1, player2]
OurTicTacToe::Game.new(players).play
