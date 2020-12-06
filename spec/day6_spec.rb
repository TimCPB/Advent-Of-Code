require '../lib/day6.rb'

describe "customs" do
  
  it "formats the data" do
    a = Customs.new
    test = a.test_data
    a.format_answers(test)
    expect(a.formatted_answers.length).to eq(5)
    p a.formatted_answers
    # expect(a.formatted_answers[1].length).to eq(3)
  end

  # it "creates an array for each group and removes duplicate answers" do
  #   a = Customs.new
  #   test = a.test_data
  #   a.format_answers(test)
  #   expect(a.formatted_answers[2].length).to eq(3)
  # end

  # it "sums the unique answers from each group" do
  #   a = Customs.new
  #   test = a.test_data
  #   a.format_answers(test)
  #   expect(a.count_answers).to eq(11)
  # end

  it "counts the total number of unanimous answers" do
    a = Customs.new
    test = a.test_data
    a.format_answers(test)
    a.populate_unanimous_answers_totals
    p a.unanimous_answer_totals
    expect(a.count_unanimous_answer_totals).to eq(6)
  end

  it "sums the unanimous naswer totals for all input data" do
    a = Customs.new
    input = a.input_data
    a.format_answers(input)
    a.populate_unanimous_answers_totals
    p a.count_unanimous_answer_totals
  end

end
