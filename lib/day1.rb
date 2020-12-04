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
  results_array[0] * results_array[1]
end

def three_multiples(report)
  report_array = report.split("\n")
  results_array = []
  report_array_numbers = report_array.map { |x| x.to_i }
  report_array_numbers.each do |x|
    if results_array.length < 3
    target = 2020 - x
    temp_results_array = []
    temp_results_array.push(x)
      temp_report_array = report_array_numbers.reject{ |e| e == x }
      temp_report_array.each do |z|
        if temp_report_array.include?(target - z) && temp_results_array.length < 3
          temp_report_array.delete(z)
          temp_report_array.delete((target - z))
          temp_results_array.push(z)
          temp_results_array.push((target - z))
        end
      end
      if temp_results_array.length == 3
        results_array.push(temp_results_array[0])
        results_array.push(temp_results_array[1])
        results_array.push(temp_results_array[2])
      end
    end
  end
  results_array[0] * results_array[1] * results_array[2]
end