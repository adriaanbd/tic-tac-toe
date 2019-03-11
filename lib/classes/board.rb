module OurTicTacToe
	class Board
		attr_reader :grid
		def initialize(grid_board = {})
			@grid = grid_board.fetch(:grid, default_board)
		end

		private

		def default_board
			Array.new(3) { Array.new(3) { Cell.new } }
		end
	end
end
