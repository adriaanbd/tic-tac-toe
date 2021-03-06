require 'spec_helper'

describe Board do
	let(:string_grid) { 'new grid' }
	let(:test_grid) { 
		[
				['', '', ''],
				['', '', ''],
				['A', 'X', 'C']
			]
	}
	context '#initialize' do
		it 'board initializes with a grid' do
			expect{ Board.new(string_grid) }.to_not raise_error
		end

		board = Board.new
		it 'initializes with default grid with 3 rows' do
			expect(board.grid.length).to eq(3)
		end

		it 'initializes with default grid with 3 items in each row' do
			board.grid.each do |row|
				expect(row.length).to eq(3)
			end
		end

		it 'initializes with custom grid and returns the value' do
			board = Board.new(string_grid)
			expect(board.grid).to eq(string_grid)
		end
	end

	context '#get_cell' do
		it 'returns cell value from grid[row][col] position' do
			board = Board.new(test_grid)
			expect(board.get_cell(2, 1)).to eq('X')
		end
	end

	context '#set_cell' do
		it 'sets the cell.value at a given position' do
			board = Board.new
			board.set_cell(2, 1, 'Yes')
			expect(board.get_cell(2, 1).value).to eq('Yes')
		end
	end


	context '#game_over' do
		before(:each) do
			@TestCell = Struct.new(:value)
		end

		let(:x_cell) { @TestCell.new('X') }
		let(:o_cell) { @TestCell.new('O') }
		let(:empty) { @TestCell.new }

		it 'returns :winner when row values are all the same' do
			grid = [
				[x_cell, x_cell, x_cell],
				[o_cell, x_cell, o_cell],
				[x_cell, o_cell, x_cell],
			]
			board = Board.new(grid)
			expect(board.game_over).to eq(:winner)
		end

		it 'returns :winner when col value are all the same' do
			grid = [
				[x_cell, x_cell, empty],
				[o_cell, x_cell, o_cell],
				[x_cell, x_cell, empty],
			]
			board = Board.new(grid)
			expect(board.game_over).to eq(:winner)
		end

		it 'returns :winner when diagonals are all the same' do
			grid = [
				[x_cell, x_cell, empty],
				[o_cell, x_cell, o_cell],
				[x_cell, o_cell, x_cell],
			]
			board = Board.new(grid)
			expect(board.game_over).to eq(:winner)
		end

		it 'returns :draw when board is full and no winner' do
			grid = [
				[o_cell, x_cell, o_cell],
				[o_cell, x_cell, o_cell],
				[x_cell, o_cell, x_cell],
			]
			board = Board.new(grid)
			expect(board.game_over).to eq(:draw)
		end

		it 'returns false when no winner or draw' do
			grid = [
				[o_cell, x_cell, o_cell],
				[o_cell, empty, o_cell],
				[x_cell, empty, x_cell],
			]
			board = Board.new(grid)
			expect(board.game_over).to be(false)
		end
	end
end
