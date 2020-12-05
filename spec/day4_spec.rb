require '../lib/day4.rb'

describe "Customs" do
  
  it "separates the passports and categories within the passports" do
    a = Customs.new
    input = a.test_data
    a.format_passports(input)
    expect(a.formatted_data.length).to eq(4)
  end

  it "splits each passport into categories" do
    a = Customs.new
    input = a.test_data
    a.format_passports(input)
    expect(a.formatted_data.length).to eq(4)
    expect(a.formatted_data[0].length).to eq(8)
    p a.formatted_data
  end

  it "validates a passport" do
    a = Customs.new
    input = a.test_data
    a.format_passports(input)
    passports = a.formatted_data
    expect(a.is_valid?(passports[0])).to eq(true)
    expect(a.is_valid?(passports[1])).to eq(false)
    expect(a.is_valid?(passports[2])).to eq(true)
    expect(a.is_valid?(passports[3])).to eq(false)
  end

  it "counts the number of valid passports" do
    a = Customs.new
    input = a.test_data
    a.format_passports(input)
    expect(a.count_valid_passports).to eq(2)
    p a.count_valid_passports
  end

  it "counts the number of valid input passports" do
    a = Customs.new
    input = a.passport_data
    a.format_passports(input)
    p a.count_valid_passports
  end



end