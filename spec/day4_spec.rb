require '../lib/day4.rb'

describe "Customs" do
  
  it "separates the passports and categories within the passports" do
    a = Customs.new
    input = a.test_data
    a.separate_passports(input)
    expect(a.formatted_data.length).to eq(4)
    expect(a.formatted_data[0].split(" ").length).to eq(8)
  end

end