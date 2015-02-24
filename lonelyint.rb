def  lonelyinteger(input) 
	# input = [1,2,1]
	lonely_integer = nil
	input.each do |num|
		count = input.count(num)
		if count == 1
			lonely_integer = num
		end
	end
	p lonely_integer
end
a = gets.strip.to_i
b = gets.strip.split(" ").map! {|i| i.to_i}
lonelyinteger(b)