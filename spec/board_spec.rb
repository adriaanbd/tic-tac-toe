require 'spec_helper'

module OurTicTacToe
	describe Board do
		context '#initialize' do
			it 'board initializes with a grid' do
				expect{ Board.new(grid: 'grid') }.to_not raise_error
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
				board = Board.new(grid: 'hello')
				expect(board.grid).to eq('hello')
			end
		end
	end
end