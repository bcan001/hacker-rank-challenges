# P and Q coordinates
# 1
# 0 0 1 1
# should return: 2 2

class CoordinateCalculator
	def initialize(a,b,c,d)
		@pcoords = Coordinate.new(a,b)
		@qcoords = Coordinate.new(c,d)

		@final_p_x_coord = nil
		@final_p_y_coord = nil

	end

	def calculate
		# get x distance between 2 points, get y distance between 2 points
		xdistance = get_distance(@pcoords.x_coord,@qcoords.x_coord)
		ydistance = get_distance(@pcoords.y_coord,@qcoords.y_coord)

		if xdistance != 0
			@final_p_x_coord = @qcoords.x_coord + xdistance
		else
			@final_p_x_coord = 0
		end

		if ydistance != 0
			@final_p_y_coord = @qcoords.y_coord + ydistance
		else
			@final_p_y_coord = 0
		end

		[@final_p_x_coord,@final_p_y_coord]

	end


	def get_distance(coord1,coord2)
		if coord2 > coord1
			coord2 - coord1
		elsif coord1 > coord2
			coord1 - coord2
		else
			0
		end
	end

	class Coordinate
		attr_accessor :x_coord, :y_coord
		def initialize(x,y)
			@x_coord = x
			@y_coord = y
		end
	end

end

$array = []

t = gets.to_i
(0...t).each do |i|
  lis = gets.strip.split(" ")
  a = lis[0].to_i
  b = lis[1].to_i
  c = lis[2].to_i
  d = lis[3].to_i
  res = CoordinateCalculator.new(a,b,c,d).calculate
  $array << res
end


$array.each do |value|
	puts "#{value[0]} #{value[1]}"
end







