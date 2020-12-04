def count_trees(input)

  tree_count = 0
  right = 3
  down = 1
  lateral_coord = 0

  input.each do |row|
    if row[lateral_coord] == "#"
      tree_count += 1
    end
    # p lateral_coord
    lateral_coord += right
    if lateral_coord > 10
      excess = lateral_coord - 11
      lateral_coord = 0 + excess
    end
    

  end

  tree_count

end
