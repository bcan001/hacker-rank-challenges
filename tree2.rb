def calculate_branches(input_array)
	branches_array = []
	input_array.each do |arr|
		index0 = arr[0]
		index1 = arr[1]
		if index1 == 1
			branches_array << [index0]
		end
	end
	new_array = merge_branches(branches_array,input_array)
	calculate_pieces(new_array)
end

# if branches_array node is indexed at 1 in the branches array, then append the 0 value into the branches array
def merge_branches(branches_array, input_array)
	# branches_array = [[2],[3],[5]]
	# input_array = [[5,3],[4,3]]
	input_array.each do |pair|
		branches_array.each do |branch|
			if branch.include?(pair[1])
				#p branches_array.map { |n| n << pair[0] }
				branch << pair[0]
			end
		end
	end
	branches_array
end

def calculate_pieces(new_array)
	breaks = 0
	odd_branches = 0
	new_array.each do |branch|
		if branch.length % 2 == 0
			breaks += 1
		elsif branch.length % 2 == 1
			odd_branches += 1
		end
	end
	if odd_branches > 1
		breaks = 0
	end
	p breaks
end


array = []
input = gets.strip.split(" ").map! {|i| i.to_i}
t = input[0]
n = input[1]
(0...t).each do |i|
		lis = gets.strip.split(" ")
    array << [lis[0].to_i,lis[1].to_i]
end

calculate_branches(array)