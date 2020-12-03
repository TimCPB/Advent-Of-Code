require "../constants/day1_expense_report.rb"
require "../lib/day1.rb"

describe "sum2020" do
  
  it "loads the report and splits it into an array"do
    expect(sum2020(TEST)).to eq(["1721", "979", "366", "299", "675", "1456"])
    p sum2020(TEST)
  end

end
