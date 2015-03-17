#cde
#abc

# how many letters need to be deleted to make both strings anagrams


def make_anagram(input1,input2)
	# input1 = ['c','d','e']
	# input2 = ['a','b','c']
	@count = 0
	input1 = input1.sort
	input2 = input2.sort
	compare(input1, input2)

end


def compare(input1, input2)
	if input1 == input2
		@count = 0
	else
		new_array = []
		input1.each do |letter|
			if input2.include?(letter) == false
				new_array << letter
			end
		end
		input2.each do |letter|
			if input1.include?(letter) == false
				new_array << letter
			end
		end
	end
	p new_array.length
end


input1 = gets.strip.split("").map!
input2 = gets.strip.split("").map!
make_anagram(input1, input2)