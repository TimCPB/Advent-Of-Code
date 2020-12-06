class Customs

  attr_reader :test_data, :input_data, :formatted_answers, :unanimous_answer_totals

  def initialize
    @test_data = File.readlines('./constants/day6_test.txt', chomp: true)
    @input_data = File.readlines('./constants/day6_input.txt', chomp: true)
    @formatted_answers = ['']
    @unanimous_answer_totals = []
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
    @formatted_answers.map! { |entry| entry.delete_suffix!(" ") }
    @formatted_answers.map! { |entry| entry.split(" ") }
    # @formatted_answers.map! { |entry| entry.gsub!(/\s+/, '') }
    # @formatted_answers.map! { |entry| entry.split("").uniq }
    # @formatted_answers.map! { |entry| categorise(entry) }
  end

  def count_answers
    count = 0
    @formatted_answers.each { |arr| count += arr.length }
    count
  end

  def count_unanimous_answers(arr)
    people = arr.length
    count = 0
    arr.map! { |x| x.split("")}
    hash = {}
    ('a'..'z').each do |letter|
      hash[letter.to_sym] = 0
    end
    arr.each do |array|
      array.each { |letter| hash[letter.to_sym] += 1}
    end
    hash.each do |letter, value|
      if value == people
        count += 1
      end
    end
    count
  end

  def populate_unanimous_answers_totals
    @formatted_answers.each do |answers|
      @unanimous_answer_totals.push(count_unanimous_answers(answers))
    end
  end

  def count_unanimous_answer_totals
    @unanimous_answer_totals.sum
  end

end