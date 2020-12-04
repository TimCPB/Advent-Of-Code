require '../lib/day3.rb'

describe "count_trees" do

  # it "prints the initial test input" do
  #   input = File.readlines('./constants/day3_test.txt', chomp: true)
  #   expect(count_trees(input)).to eq(input)
  # end

  it "counts trees in three rows of data" do
    input = File.readlines('./constants/day3_basic.txt', chomp: true)
    a = Ski_resort.new(input)
    a.count_trees
    expect(a.tree_count_array[0]).to eq(1)
  end

  it "counts trees in data with more rows than columns" do
    input = File.readlines('./constants/day3_test.txt', chomp: true)
    a = Ski_resort.new(input)
    a.count_trees
    expect(a.tree_count_array[0]).to eq(7)
  end

  it "counts trees for custom slopes" do
    input = File.readlines('./constants/day3_test.txt', chomp: true)
    a = Ski_resort.new(input)
    a.count_trees(5, 1)
    expect(a.tree_count_array[0]).to eq(3)
  end

  it "Allows user to move more than one row down at a time" do
    input = File.readlines('./constants/day3_test.txt', chomp: true)
    a = Ski_resort.new(input)
    a.count_trees(1, 2)
    a.count_trees(3, 2)
    expect(a.tree_count_array[0]).to eq(2)
    expect(a.tree_count_array[1]).to eq(2)
  end

end

describe "total_trees" do

  it "gives the total trees across multiple slopes" do
    input = File.readlines('./constants/day3_test.txt', chomp: true)
    a = Ski_resort.new(input)
    a.count_trees(1, 1)
    a.count_trees(3, 1)
    a.count_trees(5, 1)
    a.count_trees(7, 1)
    a.count_trees(1, 2)
    p a.tree_count_array
    expect(a.total_trees).to eq(336)
  end

end

