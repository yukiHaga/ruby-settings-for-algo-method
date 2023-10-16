begin
  lines = readlines.map(&:chomp)
  numbers = lines[1].split.map(&:to_i)
  average_number = numbers.sum / numbers.length
  puts average_number.floor
rescue StandardError => e
  p "raise: error", e
end
