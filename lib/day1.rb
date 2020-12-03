require_relative "../constants/day1_expense_report.rb"

def sum2020(report)
  report_array = report.split("\n")
  results_array = []
  report_array_numbers = report_array.map { |x| x.to_i }
  report_array_numbers.each do |x|
    if report_array_numbers.include?((2020 - x))
      report_array_numbers.delete(x)
      results_array.push(x)
      results_array.push((2020 - x))
    end
  end
  p results_array[0] * results_array[1]
end