require 'spec_helper'

describe Player do
  let(:player1) { 'Adriaan' }
  let(:player2) { 'Maya' }
  let(:x_cell) { 'X '}
  let(:o_cell) { 'O' }
  context '#initialize' do
    it 'when initialized with type and name' do
      player = Player.new(x_cell, player1)
      expect(player.avatar).to eq(x_cell)
      expect(player.name).to eq(player1)
      player = Player.new(o_cell, player2)
      expect(player.avatar).to eq(o_cell)
      expect(player.name).to eq(player2)
    end

    it 'when player initialized without turn or name raises error' do
      expect { Player.new() }.to raise_error(ArgumentError)
    end
  end
end
