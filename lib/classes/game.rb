module OurTicTacToe
	class Game
		attr_reader :players, :board, :current_player, :other_player

		def initialize(players, board = Board.new)
			@players = players
			@board = board
			@current_player, @other_player = players
		end

		def switch_players
			@current_player, @other_player = @other_player, @current_player
		end

		def solicit_move
			"#{@current_player.name}: Enter a number between 1 and 9."
		end

		def get_move(move)
			keyboard_to_position(move)
		end

		def game_over_mssg
			return "#{@current_player.name} won!" if board.game_over == :winner
			return 'The game ended in a tie' if board.game_over == :draw
		end

		private

		def keyboard_to_position(move)
			keyboard_map = {
				'1' => [0, 0],
				'2' => [1, 0],
				'3' => [2, 0],
				'4' => [0, 1],
				'5' => [1, 1],
				'6' => [2, 1],
				'7' => [0, 2],
				'8' => [1, 2],
				'9' => [2, 2]
			}
			keyboard_map[move]
		end
	end
end
