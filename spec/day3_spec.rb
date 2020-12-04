require '../lib/day3.rb'

describe "count_trees" do

  # it "prints the initial test input" do
  #   input = File.readlines('./constants/day3_test.txt', chomp: true)
  #   expect(count_trees(input)).to eq(input)
  # end

  it "counts trees in three rows of data" do
    input = File.readlines('./constants/day3_basic.txt', chomp: true)
    expect(count_trees(input)).to eq(1)
  end

end