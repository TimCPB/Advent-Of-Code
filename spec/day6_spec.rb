require '../lib/day6.rb'

describe "customs" do
  
  it "formats the data" do
    a = Customs.new
    test = a.test_data
    a.format_answers(test)
    expect(a.formatted_answers.length).to eq(5)
    # expect(a.formatted_answers[1].length).to eq(3)
  end

  it "creates an array for each group and removes duplicate answers" do
    a = Customs.new
    test = a.test_data
    a.format_answers(test)
    p a.formatted_answers
    expect(a.formatted_answers[2].length).to eq(3)
  end

  it "sums the unique answers from each group" do
    a = Customs.new
    test = a.test_data
    a.format_answers(test)
    expect(a.count_answers).to eq(11)
  end

end
