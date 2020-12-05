require '../lib/day4.rb'

describe "Customs" do
  
  it "separates the passports and categories within the passports" do
    a = Customs.new
    input = a.test_data
    a.format_passports(input)
    expect(a.formatted_data.length).to eq(4)
    p a.formatted_data
  end

  it "splits each passport into categories" do
    a = Customs.new
    input = a.test_data
    a.format_passports(input)
    expect(a.formatted_data.length).to eq(4)
    expect(a.formatted_data[0].length).to eq(8)
    p a.formatted_data
  end

end