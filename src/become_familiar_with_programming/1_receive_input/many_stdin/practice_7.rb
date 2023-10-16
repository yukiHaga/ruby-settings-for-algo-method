begin
  lines = readlines.map(&:chomp)
  numbers = lines[1].split.map(&:to_i)
  minimum_number = numbers.min
  puts minimum_number
rescue StandardError => e
  p "raise: error", e
end
