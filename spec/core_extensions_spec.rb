require 'spec_helper'

describe Array do
	context '#all_empty?' do
		it 'returns true if all elements in array is empty' do
			expect(["", "", ""].all_empty?).to be true
		end

		it 'returns false if some of elements in array is not empty' do
			expect(["X", "", "O"].all_empty?).to be false
		end

		it 'returns true if empty array is passed' do
			expect([].all_empty?).to be true
		end
	end

	context '#all_same?' do
		it 'returns true if all elemnents in array are same' do
			expect(['O', 'O', 'O'].all_same?).to be true
		end

		it 'returns false if some of the elements in the array are not same' do
			expect(['X', 'O', 'X'].all_same?).to be false
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
			expect(['X', 'O', 'X'].none_empty?).to be true
		end

		it 'returns false if at least one of the elements in array is empty' do
			expect(['X', 'X', ''].none_empty?).to be false
		end

		it 'returns true if empty array is passed' do
			expect([].none_empty?).to be true
		end
	end
end