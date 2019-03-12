module OurTicTacToe
	class Board
		attr_reader :grid
		def initialize(grid_board = {})
			@grid = grid_board.fetch(:grid, default_board)
		end

		def get_cell(row, col)
			grid[row][col]
		end

		def set_cell(row, col, value)
			cell = get_cell(row, col)
			cell.value = value
		end

		private

		def default_board
			Array.new(3) { Array.new(3) { Cell.new } }
		end
	end
end
