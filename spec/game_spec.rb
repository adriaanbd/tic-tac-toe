require 'spec_helper'

module OurTicTacToe
	describe Game do
		let (:player1) { Player.new('X', 'maya') } 
		let (:player2) { Player.new('O', 'adriaan') } 
		let (:players) { [player1, player2] }

		before(:each) do
			@game = Game.new(players)
		end

		context '#initialize' do 
			it 'selects current player as player1' do
				expect(@game.current_player).to eq player1
			end
			it 'selects other player as player2' do
				expect(@game.other_player).to eq player2
			end
		end

		context '#switch_players' do
			it 'will set current player to other player' do
				other_player = @game.other_player
				@game.switch_players
				expect(@game.current_player).to eq other_player
			end

			it 'will set other player to current player' do
				current_player = @game.current_player
				@game.switch_players
				expect(@game.other_player).to eq current_player
			end

		end

	end
end