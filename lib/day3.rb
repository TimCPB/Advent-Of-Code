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
    row_count = 0
    while row_count < @input.length do
      if @input[row_count][lateral_coord] == "#"
        tree_count += 1
      end
      lateral_coord += right
      row_count += down
      if lateral_coord > (@row_length - 1)
        excess = lateral_coord - @row_length
        lateral_coord = 0 + excess
      end
    end
    @tree_count_array.push(tree_count)
  end

  def total_trees
    @tree_count_array.inject(:*)
  end

end
