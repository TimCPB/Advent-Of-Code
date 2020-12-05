# require '../constants/day4_test.txt'
# require '../constants/day4_input.txt'

class Customs

  attr_reader :test_data, :passport_data, :formatted_data

  def initialize
    @test_data = File.readlines('./constants/day4_test.txt', chomp: true)
    @passport_data = File.readlines('./constants/day4_input.txt', chomp: true)
    @formatted_data = ['']
  end

  def separate_passports(data_array)
    i = 0
    data_array.each do |line|
      if line.empty?
        i += 1
        @formatted_data[i] = ''
      else
        @formatted_data[i] << ("#{line} ")
      end
    end
  end

end