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
			cell.value ||= value
		end

		def game_over
			return :winner if winner?
			return :draw if draw?
			false
		end

		def formatted_grid
			grid.each_with_index do |row, outer|
				r = row.each_with_index.map do |col, inner|
					col.value.nil? ? inner +  1 + (row.length * outer) : col.value
				end
				puts r.join(' ')
			end
		end

		def winning_positions
			grid + grid.transpose + diagonals
		end

		def diagonals
			[
				[get_cell(0, 0), get_cell(1, 1), get_cell(2, 2)],
				[get_cell(0, 2), get_cell(1, 1), get_cell(2, 0)]
			]
		end

		private

		def default_board
			Array.new(3) { Array.new(3) { Cell.new } }
		end

		def winner?
			winning_positions.each do |winning_position|
				next if winning_position_values(winning_position).all_empty?
				return true if winning_position_values(winning_position).all_same?
			end
			false
		end

		def winning_position_values(winning_position)
			winning_position.map { |cell| cell.value}
		end

		def draw?
			grid.flatten.map { |cell| cell.value }.none_empty?
		end
	end
end
