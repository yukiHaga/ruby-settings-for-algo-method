begin
  lines = readlines.map(&:chomp)
  numbers = lines[1].split.map(&:to_i)
  maximum_number = numbers.max
  puts maximum_number
rescue StandardError => e
  p "raise: error", e
end
