require 'spec_helper'

module OurTicTacToe
	describe Board do
		context 'initialize' do
			it 'board initializes with a grid' do
				expect{ Board.new(grid: "grid")}.to_not raise_error
			end
		end
	end
end