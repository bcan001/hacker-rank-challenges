# # Input Format 
# The first line contains an integer T, the number of test cases. T lines follow.
# Each line contains an integer K

# Output Format
# T lines. Each line contains an integer that denotes the maximum number of pieces that can be obtained for each test case.

# 3*2 = 6
# 4*1 = 5
# check every combination that multiplies up to the given max cuts. the combination that has the highest sum will yeild the highest amount of slices of cake


class Trial
	attr_accessor :horz_cuts, :vert_cuts
	attr_reader :cuts
	def initialize(cuts)
		@cuts = cuts
		@horz_cuts = 0
		@vert_cuts = 0
	end

	def divide
		# count down from max and multiply by every number in the array. if the sum is equal to that number, then include those in a new array
		range = [1,2,3,4,5]

		array = []
		range.each do |int|
			array << [int]
		end
		array

	end


	def get_numbers(array)
		# for every integer in the range, if int does not equal it, then merge the two
		#p array
		array.each do |number|
			[1,2,3,4,5].each do |v|
				number << v
				#p number
			end
			array
		end

		g = []
		array.each do |val|
			val = val.uniq
			g << val
		end
		g
	end

	def multiply(array)
		p array

		array.each do |val|
			val.each do |u|
				number = val[0] * u unless u == val[0]
				p number
			end
		end

	end
	

end



def halloween(a)
	trial = Trial.new(a)
	trial.multiply(trial.get_numbers(trial.divide))


end
t = gets.to_i
(0...t).each do |i|
    lis = gets.strip.split(" ")
    a = lis[0].to_i
    res = halloween(a)
end

