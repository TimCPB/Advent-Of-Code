class ...

  attr_reader :test_data, :input_data

  def initialize
    @test_data = File.readlines('./constants/day7_test.txt', chomp: true)
    @input_data = File.readlines('./constants/day7_input.txt', chomp: true)
  end

end
