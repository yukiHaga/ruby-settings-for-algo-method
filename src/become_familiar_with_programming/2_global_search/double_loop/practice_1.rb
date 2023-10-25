# @param [Integer] target_number
# @return [Boolean]
def prime_number?(target_number)
  return false if target_number < 2
  return true if target_number == 2

  (2..target_number - 1).each do |number|
    return false if (target_number % number).zero?
  end

  true
end

begin
  lines = readlines.map(&:chomp)
  numbers_count = lines[0].to_i
  numbers = lines[1].split.map(&:to_i)
  prime_number_count = 0

  (0..(numbers_count - 1)).each do |i|
    prime_number?(numbers[i]) && prime_number_count += 1
  end

  puts prime_number_count
rescue StandardError => e
  p "raise: error", e
end
