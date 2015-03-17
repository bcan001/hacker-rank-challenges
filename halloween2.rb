class Trial
	def initialize(cuts_available)
		@cuts_available = cuts_available
		@horizontal_cut = 0
		@vertical_cut = 0

		@array = []
		@match_array = []

	end
	
	def calculate
		# @cuts_available is the max number of horizontal and vertical cuts
		# do this for every number in the range: [[1,1],[1,2],[1,3],[1,4],[1,5]]
		(1..@cuts_available).to_a.each do |num|
			(1..@cuts_available).to_a.each do |val|
				@array << [num,val]
			end
		end

		find_matching_pairs(@array)

		find_best_combo_of_cuts(@match_array)
		find_max_slices(@match_array)

		# @array = [[1],[2],[3],[4],[5]]
		# need to return a big array
	end

	def find_matching_pairs(big_array)
		big_array.each do |value|
			check_attributes(value)
		end
	end

	def check_attributes(array)
		@horizontal_cut = array[0]
		@vertical_cut = array[1]
		@match_array << array if @horizontal_cut + @vertical_cut == @cuts_available
	end

	def find_best_combo_of_cuts(possible_choices_array)
		# check to see which of these combinations in the array yield the highest result
		possible_choices_array.each do |value|
			product = mult_numbers(value)
			value << product
		end
	end

	def mult_numbers(array_of_2_numbers)
		array_of_2_numbers[0] * array_of_2_numbers[1]
	end

	def find_max_slices(array)
		# iterate through each item in the array. if the upcoming item has greater values than it, then update the item, other wise skip updating the attributes
		totals = []
		array.each do |value|
			totals << value[2]
		end	
		totals = totals.max
		array.each do |value|
			@horizontal_cut = value[0] if value[2] == totals
			@vertical_cut = value[1] if value[2] == totals
		end

		@horizontal_cut * @vertical_cut

	end
end


$array = []

def halloween(a)
	trial = Trial.new(a)
	$array << trial.calculate
end


t = gets.to_i
(0...t).each do |i|
  lis = gets.strip.split(" ")
  a = lis[0].to_i
  res = halloween(a)
end


$array.each do |value|
	puts value
end












