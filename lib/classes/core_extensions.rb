class Array
	def all_empty?
		self.all? { |item| item.to_s.empty? }
	end 

	def all_same?
		self.all? { |item| item == self[0] }
	end

	def any_empty?
		self.any? { |item| item.to_s.empty? }
	end

	def none_empty?
		!any_empty?
	end
end