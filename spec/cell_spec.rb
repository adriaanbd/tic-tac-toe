require 'spec_helper'

module OurTicTacToe
  describe Cell do
    context '#initialize' do
      it 'when initialized expects default value of "" ' do
        cell = Cell.new
        expect(cell.value).to eql("")
      end
    end
  end
end