# Problem Statement
# Even Tree

# You are given a tree (a simple connected graph with no cycles). You have to remove as many edges from the tree as possible to obtain a forest with the condition that : Each connected component of the forest should contain an even number of vertices.

# To accomplish this, you will remove some edges from the tree. Find out the number of removed edges.

# Input Format 
# The first line of input contains two integers N and M. N is the number of vertices and M is the number of edges. 
# The next M lines contain two integers ui and vi which specifies an edge of the tree. (1-based index)

# Output Format 
# Print the answer, a single integer.

# Constraints 
# 2 <= N <= 100.

# Note: The tree in the input will be such that it can always be decomposed into components containing even number of nodes.

# 6 4 , 6 vertices with 5 edges
# 2 1  , branch with value 2 connected to the 1

# 10 9
# 2 1
# 3 1
# 4 3
# 5 2
# 6 1
# 7 2
# 8 6
# 9 8
# 10 8

class Tree
	def initialize
		@structure = {}
		@vertices = nil
		@edges = nil

		@done = false
	
	end

	def run
		input = gets.chomp
		@vertices = input[0]
		@edges = input[2]

		while @done == false
			input = gets.chomp
			if input == ''
				@done = true
			else
				ui = input[0]
				vi = input[2]
				new_node = Node.new(ui,vi)
				if unique_key?(new_node.vi, @structure) == false
					@structure[new_node.vi] = [new_node.ui]
				else
					@structure[new_node.vi].<< new_node.ui
				end
				p @structure
			end
		end
		calculate_removed_vertices
	end

	def unique_key?(key,hash)
		hash.has_key?(key)
	end

	# def valid_tree?(hash)
	# 	#in order for a tree to be valid, there has to be a key of '1'
	# 	#every number in the value with a key of '1' needs to be its own seperate key
	# end


	def calculate_removed_vertices
		p @structure
		#valid_tree?(@structure)

		node_count = 1
		removed_vertices = 0

		if @structure.length % 3 == 0
			removed_vertices = 0
		else
			@structure.each do |key, value|
				node_count += 1
				if count_children(value) % 2 == 0
					# If the branch has an even node count, remove the vertice closes to the index
					removed_vertices += 1
				elsif count_children(value) % 2 == 1
					# if the branch has an odd node count, remove the second vertice on the branch
					removed_vertices += 2
				end
			end
		end
		puts "The removed vertices count:"
		p removed_vertices
	end

	def count_children(branch_values)
		# branch = {1 => [2,3,4]}
		branch_values.count
	end

end

class Node
	attr_accessor :ui, :vi
	def initialize(ui,vi)
		@ui = ui
		@vi = vi
	end
end



tree = Tree.new
tree.run

