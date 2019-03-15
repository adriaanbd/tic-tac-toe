require 'spec_helper'

describe Player do
  context '#initialize' do
    it 'when initialized with type and name' do
      player = Player.new('X', 'Adriaan')
      expect(player.avatar).to eq('X')
      expect(player.name).to eq('Adriaan')
    end

    it 'when player initialized without turn or name raises error' do
      expect { Player.new() }.to raise_error(ArgumentError)
    end
  end
end
