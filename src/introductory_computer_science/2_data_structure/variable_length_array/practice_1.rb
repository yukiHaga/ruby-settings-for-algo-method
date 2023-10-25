begin
  lines = readlines.map(&:chomp)
  _, index = lines[0].split.map(&:to_i)
  numbers = lines[1].split.map(&:to_i)

  puts numbers[index]
  reverse_numbers = numbers.reverse
  puts reverse_numbers[index]
rescue StandardError => e
  p "raise: error", e
end
