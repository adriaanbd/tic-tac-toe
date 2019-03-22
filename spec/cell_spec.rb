require 'spec_helper'

describe Cell do
  let(:x_cell) { 'X '}
  let(:o_cell) { 'O' }
  context '#initialize' do
    it "when initialized expects default value of ''" do
      cell = Cell.new
      expect(cell.value).to eq('')
    end

    it 'when initialized with custom value like X or O returns value' do
      cell = Cell.new(x_cell)
      expect(cell.value).to eq(x_cell)
      cell = Cell.new(o_cell)
      expect(cell.value).to eq(o_cell)
    end
  end
end
