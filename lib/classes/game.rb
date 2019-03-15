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

		def solicit_move()
			puts "#{@current_player.name}: Enter a number between 1 and 9 in an empty cell.\n"
		end

    def get_move(move = gets.chomp)
      keyboard_to_position(move)
    end

    def game_over_mssg
      puts "#{@current_player.name} won!" if board.game_over == :winner
      puts "The game ended in a tie" if board.game_over == :draw
    end


    def play
      puts "#{@current_player.name} is the first player!"
      
      while true
        solicit_until
        break if @board.game_over
        switch_players
      end
      print_board
      game_over_mssg
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
    
    def solicit_until(move = nil)
      while move.nil?
          print_board
          solicit_move
          col, row = get_move
          move = board.set_cell(row, col, @current_player.avatar)
          puts move
      end
    end

    def print_board
      print "\n"
      board.formatted_grid
    end

  end
end
