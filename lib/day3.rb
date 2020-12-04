def count_trees(input)

  tree_count = 0
  right = 3
  down = 1
  lateral_coord = 0

  input.each do |row|
    
    if row[lateral_coord] == "#"
      tree_count += 1
    end
    lateral_coord += right

  end

  tree_count

end
