require 'spec_helper'

describe Array do
	let(:test_arr) { ['X', '', 'O'] }
	let(:test_arr_2) { ['X', 'O', 'X'] }
	let(:all_empty_arr) { ['', '', ''] }
	let(:all_same_arr_o) { ['O', 'O', 'O'] }
	let(:all_same_arr_x) { ['X', 'X', 'X'] }

	context '#all_empty?' do
		it 'returns true if all elements in array is empty' do
			expect(all_empty_arr.all_empty?).to be true
		end

		it 'returns false if some of elements in array is not empty' do
			expect(test_arr.all_empty?).to be false
		end

		it 'returns true if empty array is passed' do
			expect([].all_empty?).to be true
		end
	end

	context '#all_same?' do
		it 'returns true if all elemnents in array are same' do
			expect(all_same_arr_o.all_same?).to be true
		end

		it 'returns false if some of the elements in the array are not same' do
			expect(test_arr_2.all_same?).to be false
		end

		it 'returns true is empty array is passed' do
			expect([].all_same?).to be true
		end
	end

	context '#any_empty' do
		it 'returns true if at least one element in array is empty' do
			expect(['X', 'O', ''].any_empty?).to be true
		end

		it 'returns false if none of the elements in array is empty' do
			expect(['X', 'O', 'X'].any_empty?).to be false
		end

		it 'returns true if empty array is passed' do
			expect([].any_empty?).to be false
		end
	end

	context '#none_empty?' do
		it 'returns true if none of the elements in array are empty' do
			expect(test_arr_2.none_empty?).to be true
		end

		it 'returns false if at least one of the elements in array is empty' do
			expect(test_arr.none_empty?).to be false
		end

		it 'returns true if empty array is passed' do
			expect([].none_empty?).to be true
		end
	end
end