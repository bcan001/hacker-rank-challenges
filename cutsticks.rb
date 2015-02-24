def cutsticks(stick_count, sticks)
	# stick_count = 6
	# sticks = [1,2,3,4,5,6] 
	min_num = identify_shortest_stick(sticks)
	new_array = sticks
	p new_array.length
	while new_array.length > 0
		new_array = cut_sticks(min_num, new_array)
		new_array = delete_zero_values_from_array(new_array)
		p new_array.length if new_array.length != 0
	end
end

def identify_shortest_stick(array)
	array.min
end

def cut_sticks(min_num, array)
	new_array = []
	array.each do |val|
		new_array << val - min_num
	end
	new_array
end

def delete_zero_values_from_array(array)
	array.each do |val|
		if val <= 0
			array.delete(val)
		end
	end
	array
end


stick_count = gets.strip.to_i
sticks = gets.strip.split(" ").map! {|i| i.to_i}
cutsticks(stick_count, sticks)