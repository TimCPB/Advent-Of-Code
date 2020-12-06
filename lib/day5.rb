class Plane

  attr_reader :test_data, :input_data

  def initialize
    @test_data = File.readlines('./constants/day5_test.txt', chomp: true)
    @input_data = File.readlines('./constants/day5_input.txt', chomp: true)
    @rows = 127
  end

  def find_row(code)
    lower = 0
    upper = @rows
    if code[0] == "F"
      upper = (upper.to_f / 2).to_i
    elsif code[0] == "B"
      lower = (upper.to_f /2).round
    end

  end

end