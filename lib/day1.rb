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
    # p x
    # p report_array_numbers
    target = 2020 - x
    temp_results_array = []
    temp_results_array.push(x)
    # p temp_results_array
    temp_report_array = report_array_numbers.reject{ |e| e == x }
    # ary.reject!{|e| e==42 }
    # p temp_report_array
    temp_report_array.each do |z|
      if temp_report_array.include?(target - z)
        p temp_report_array
        temp_report_array.delete(z)
        temp_report_array.delete((target - z))
        temp_results_array.push(z)
        temp_results_array.push((target - z))
        p temp_report_array
        # p temp_results_array
      end
    end
    results_array.push(temp_results_array[0])
    results_array.push(temp_results_array[1])
    results_array.push(temp_results_array[2])
    # p results_array
  end
  # p results_array
  results_array[0] * results_array[1] * results_array[2]
end