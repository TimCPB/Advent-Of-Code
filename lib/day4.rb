
class Customs

  attr_reader :test_data, :passport_data, :formatted_data, :valid_passports, :extra_valid_passports

  def initialize
    @test_data = File.readlines('./constants/day4_test.txt', chomp: true)
    @passport_data = File.readlines('./constants/day4_input.txt', chomp: true)
    @formatted_data = ['']
    @valid_passports = []
    @extra_valid_passports = []
  end

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

  def is_valid?(hash)
    hash.length == 8 || (hash.length == 7 && hash[:cid] == nil)
  end

  def count_valid_passports
    count = 0
    @formatted_data.each do |hash|
      if is_valid?(hash)
        count += 1
        @valid_passports.push(hash)
      end
    end
    count
  end

  def valid_byr?(byr)
    byr.length == 4 && byr.to_i >= 1920 && byr.to_i <=2002
  end

  def valid_iyr?(iyr)
    iyr.length == 4 && iyr.to_i >= 1920 && iyr.to_i <=2020
  end

  def valid_eyr?(eyr)
    eyr.length == 4 && eyr.to_i >= 2020 && eyr.to_i <=2030
  end

  def valid_hgt?(hgt)
    if hgt.include?("cm")
      value = hgt.delete("cm").to_i
      value >=150 && value <= 193
    elsif hgt.include?("in")
      value = hgt.delete("in").to_i
      value >= 59 && value <= 76
    else
      false
    end
  end

  def valid_hcl?(hcl)
    count = 0
    if hcl[0] == "#" && hcl.length == 7
      hcl.delete("#").split("").each do |char|
        if ((0..9).include?(char.to_i) && !("a..z").include?(char)) || ("a..f").include?(char)
          count += 1
        end
      end
    end
    count == 6 ? true : false  
  end

  def valid_ecl?(ecl)
    valid_colours = ["amb", "blu", "brn", "gry", "grn", "hzl", "oth"]
    valid_colours.include?(ecl)
  end

  def valid_pid?(pid)
    valid_characters = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    count = 0
    pid.split("").each { |char| count += 1 if valid_characters.include?(char) }
    (pid.length == 9 && count == 9) ? true : false
  end

  def extra_valid?(hash)
    (valid_byr?(hash[:byr]) && valid_iyr?(hash[:iyr]) && valid_eyr?(hash[:eyr]) && valid_hgt?(hash[:hgt]) && valid_hcl?(hash[:hcl]) && valid_ecl?(hash[:ecl]) && valid_pid?(hash[:pid]))
  end

  def count_extra_valid_passports
    count = 0
    @valid_passports.each do |hash|
      if extra_valid?(hash)
        count += 1
        @extra_valid_passports.push(hash)
      end
    end
    count
  end

end
