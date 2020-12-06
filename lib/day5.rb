class Plane

  attr_reader :test_data, :input_data, :seat_IDs

  def initialize
    @test_data = File.readlines('./constants/day5_test.txt', chomp: true)
    @input_data = File.readlines('./constants/day5_input.txt', chomp: true)
    @rows = 127
    @columns = 7
    @seat_IDs = []
    @missing_seats = []
  end

  def find_seat_ID(code)
    lower_row = 0
    upper_row = @rows
    lower_column = 0
    upper_column = @columns
    code.split("").each do |letter|
      if letter == "F"
        upper_row = upper_row - ((upper_row - lower_row).to_f / 2).round
      elsif letter == "B"
        lower_row = lower_row + ((upper_row - lower_row).to_f / 2).round
      elsif letter == "L"
        upper_column = upper_column - ((upper_column - lower_column).to_f / 2).round
      elsif letter == "R"
        lower_column = lower_column + ((upper_column - lower_column).to_f / 2).round
      end
    end
    upper_row * 8 + upper_column
  end

  def populate_seat_IDs(arr)
    @seat_IDs = arr.map { |code| find_seat_ID(code) }
  end

  def find_highest_ID
    @seat_IDs.max { |a, b| a<=>b }
  end

  def find_lowest_ID
    @seat_IDs.min { |a, b| a<=>b }
  end

  def find_missing_seats
    numbers = *(1..878)
    numbers.each_with_index do |num, i|
      if !@seat_IDs.include?(num) && @seat_IDs.include?(numbers[i-1]) && @seat_IDs.include?(numbers[i+1])
        return num
      end
    end
  end

end