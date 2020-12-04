require '../lib/day3.rb'

describe "count_trees" do
  
  input = File.readlines('./constants/day3_test.txt', chomp: true)

  it "prints the initial test input" do
    expect(count_trees(input)).to eq(input)
  end
  
end