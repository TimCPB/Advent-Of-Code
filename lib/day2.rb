require_relative "../constants/day2_passwords.rb"

def find_valid_passwords(passwords)
  passwords_array = passwords.split("\n")
  formatted_passwords = []
  count = 0
  passwords_array.each do |string|
    single_password_array = string.split(" ")
    password_info = {
      min: single_password_array[0][0].to_i,
      max: single_password_array[0][2].to_i,
      letter: single_password_array[1][0],
      password: single_password_array[2]
    }
    formatted_passwords.push(password_info)
  end

  formatted_passwords.each do |pass_hash|
    password = pass_hash[:password]
    letter = pass_hash[:letter]
    min = pass_hash[:min]
    max = pass_hash[:max]
    if password.count(letter) >= min && password.count(letter) <= max
      count += 1
    end
  end
  count
end
