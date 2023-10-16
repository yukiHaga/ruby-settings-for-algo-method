begin
  lines = readlines.map(&:chomp)
  numbers = lines[1].split.map(&:to_i)
  puts numbers.sum
rescue StandardError => e
  p "raise: error", e
end
