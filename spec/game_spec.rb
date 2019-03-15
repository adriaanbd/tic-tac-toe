require 'spec_helper'

module OurTicTacToe
	describe Game do
		let(:player1) { Player.new('X', 'maya') }
		let(:player2) { Player.new('O', 'adriaan') }
		let(:players) { [player1, player2] }

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

		context '#solicit_move' do
			it 'returns string interpolation asking player to make move' do
				exp = "Maya: Enter a number between 1 and 9 in an empty cell.\n"
				expect {@game.solicit_move}.to output(exp).to_stdout
			end
		end

		context '#get_move' do
			it 'returns two item array with equivalent grid position' do
				expect(@game.get_move('1')).to eq([0, 0])
				expect(@game.get_move('5')).to eq([1, 1])
			end
		end

		context '#game_over_mssg' do
			it 'returns current_player.name as winner if winner?' do
				allow(@game.board).to receive(:game_over) { :winner }
				expect{@game.game_over_mssg}.to output("Maya won!\n").to_stdout
			end

			it 'returns draw when board is full and no winner' do
				allow(@game.board).to receive(:game_over) { :draw }
				expect{@game.game_over_mssg}.to output("The game ended in a tie\n").to_stdout
			end
		end
	end
end
