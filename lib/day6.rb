class Customs

  attr_reader :test_data, :input_data, :formatted_answers

  def initialize
    @test_data = File.readlines('./constants/day6_test.txt', chomp: true)
    @input_data = File.readlines('./constants/day6_input.txt', chomp: true)
    @formatted_answers = ['']
  end

  def format_answers(array)
    i = 0
    array.each do |line|
      if line.empty?
        i += 1
        @formatted_answers[i] = ''
      else
        @formatted_answers[i] << ("#{line} ")
      end
    end
    @formatted_answers.map! { |entry| entry.gsub!(/\s+/, '') }
    @formatted_answers.map! { |entry| entry.split("").uniq }
    # @formatted_answers.map! { |entry| categorise(entry) }
  end

end