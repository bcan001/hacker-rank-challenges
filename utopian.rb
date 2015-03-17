# first growth cycle/year ==> height * 2
# second growth cycle/year ==> height + 1

# find height at each interval
# add 1 for every cycle. if the cycle_count is odd, multiply the current height by 2
# if the cycle_count is even, add 1 to the height
# else, the height is 0

# 1 to 2
# 4 to 7

class Tree
	attr_accessor :height, :cycle_count
	attr_reader :cycles
	def initialize(cycles)
		@height = 1
		@cycles = cycles
	end

	def find_height
		(0...@cycles).each do |cycle|
			if (cycle % 2 == 1)
				@height += 1
			elsif cycle % 2 == 0
				@height *= 2
			else
				@height += 0
			end
		end
	end

	def calculate
		find_height
	end
end


$array = []

def utopian_do(cycles)
	tree = Tree.new(cycles)
	tree.calculate
	$array << tree.height
end


t = gets.to_i
(0...t).each do |i|
  lis = gets.strip.split(" ")
  a = lis[0].to_i
  res = utopian_do(a)
end

$array.each do |value|
	puts value
end




