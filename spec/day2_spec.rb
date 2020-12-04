require "../constants/day2_passwords.rb"
require "../lib/day2.rb"

describe "find_valid_passwords" do
  
  it "returns the number of valid passwords in the test input" do
    expect(find_valid_passwords(TEST_PASSWORDS)).to eq(2)
  end

end
