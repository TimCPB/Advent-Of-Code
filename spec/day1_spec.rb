require "../constants/day1_expense_report.rb"
require "../lib/day1.rb"

describe "sum2020" do
  
  it "solves the test array" do
    expect(sum2020(TEST)).to eq([1721, 299])
  end

end
