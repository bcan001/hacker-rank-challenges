










def angry(input)


end

t = gets.to_i

(0...t).each do |e|
	lis = gets.strip.split(" ")
	a = lis[0].to_i
	b = lis[1].to_i

	res = angry(a,b)
end