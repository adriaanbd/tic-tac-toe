require 'spec_helper'

module OurTicTacToe
  describe Cell do
    context '#initialize' do
      it 'when initialized expects default value of nil' do
        cell = Cell.new
        expect(cell.value).to be_nil
      end

      it 'when initialized with custom value returns value' do
        cell = Cell.new('X')
        expect(cell.value).to eq('X')
      end
    end
  end
end
