# def count_trees(input)

#   tree_count = 0
#   right = 3
#   down = 1
#   lateral_coord = 0
#   row_length = input[0].length

#   input.each do |row|
#     if row[lateral_coord] == "#"
#       tree_count += 1
#     end
#     # p lateral_coord
#     lateral_coord += right
#     if lateral_coord > (row_length - 1)
#       excess = lateral_coord - row_length
#       lateral_coord = 0 + excess
#     end
    

#   end

#   tree_count

# end

class Ski_resort

  attr_reader :tree_count_array

  def initialize(input)
    @input = input
    @row_length = input[0].length
    @tree_count_array = [] 
  end

  def count_trees(right = 3, down = 1)
    tree_count = 0
    lateral_coord = 0
    @input.each do |row|
      if row[lateral_coord] == "#"
        tree_count += 1
      end
      lateral_coord += right
      if lateral_coord > (@row_length - 1)
        excess = lateral_coord - @row_length
        lateral_coord = 0 + excess
      end
    end
    @tree_count_array.push(tree_count)
  end
end
