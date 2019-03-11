require 'spec_helper'

module OurTicTacToe
  describe Player do
    context '#initialize' do
      it 'when initialized with type and name' do
        player = Player.new('X', 'Adriaan')
        expect(player.turn).to eq('X')
        expect(player.name).to eq('Adriaan')
      end
    end
  end
end
