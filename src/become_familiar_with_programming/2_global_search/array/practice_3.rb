begin
  lines = readlines
  numbers = lines[1].split.map(&:to_i)

  positive_numbers = numbers.count(&:positive?)
  puts positive_numbers
rescue StandardError => e
  p "raise: error", e
end
