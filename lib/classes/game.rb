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

		def solicit_move(again = false)
			unless again
				puts "#{@current_player.name}: Enter a number between 1 and 9.\n"
			else
				puts "#{@current_player.name}: Enter a number between 1 and 9. Please enter a number for an empty cell."
			end
		end

    def get_move(move = gets.chomp)
      keyboard_to_position(move)
    end

    def game_over_mssg
      puts "#{@current_player.name} won!" if board.game_over == :winner
      puts "The game ended in a tie" if board.game_over == :draw
    end

    def print_board
      board.formatted_grid
    end

    def play
      puts "#{@current_player.name} is the first player!"
      while true
        print_board
        solicit_move
        col, row = get_move
        move = board.set_cell(row, col, @current_player.avatar)
        solicit_until(move)
        if @board.game_over
          game_over_mssg
          print_board
          return
        else
          switch_players
        end
      end
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
    
    def solicit_until(move)
      while move.nil?
          solicit_move(true)
          col, row = get_move
          move = board.set_cell(row, col, @current_player.avatar)
      end
    end
	end
end
