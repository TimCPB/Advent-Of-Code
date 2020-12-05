# require '../constants/day4_test.txt'
# require '../constants/day4_input.txt'

class Customs

  attr_reader :test_data, :passport_data, :formatted_data

  def initialize
    @test_data = File.readlines('./constants/day4_test.txt', chomp: true)
    @passport_data = File.readlines('./constants/day4_input.txt', chomp: true)
    @formatted_data = ['']
  end

  # def separate_passports(array)
  #   i = 0
  #   array.each do |line|
  #     if line.empty?
  #       i += 1
  #       @formatted_data[i] = ''
  #     else
  #       @formatted_data[i] << ("#{line} ")
  #     end
  #   end
  # end

  def format_passports(array)
    i = 0
    array.each do |line|
      if line.empty?
        i += 1
        @formatted_data[i] = ''
      else
        @formatted_data[i] << ("#{line} ")
      end
    end
    @formatted_data.map! { |entry| entry.split(" ") }
    @formatted_data.map! { |entry| categorise(entry) }
  end

  def categorise(array)
    hash = {}
    array.each do |field|
      sub_array = field.split(":")
      hash[sub_array[0].to_sym] = sub_array[1]
    end
    hash
  end

  # def count_valid_passports


end