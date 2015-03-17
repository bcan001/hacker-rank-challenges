def find_gem_elements(t,array)
	# array = [[d,g,j,r],[s,f,h,r],[r,s,f,s],[d,g,e,s]]
	# find which letters are contained in every single nested array
	arr = []
	array.each do |nested_array|
		arr += find_unique_values(nested_array)
	end
	arr = arr.flatten.join('')
	arr = arr.split('')

	p arr

	count = 0
	arr.each do |letter|
		if arr.count(letter) == t
			# need to delete all instances of the letter from an array
			arr.delete letter
			count += 1
		end
	end
	p count
end

def find_unique_values(array)
	# array = [s,f,h,t,e]
	array = array.uniq
end


array = []
t = gets.to_i
(0...t).each do |i|
    lis = gets.strip.split(" ")
    array << [lis]
end


find_gem_elements(t,array)


