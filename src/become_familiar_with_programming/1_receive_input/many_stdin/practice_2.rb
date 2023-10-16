begin
  lines = readlines.map(&:chomp)
  numbers = lines[1].split.map(&:to_i)
  result_number = numbers.reduce { |result, number| result * number }
  puts result_number
rescue StandardError => e
  p "raise: error", e
end
