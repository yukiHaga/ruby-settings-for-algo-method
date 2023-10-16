begin
  lines = readlines.map(&:chomp)
  reverse_numbers = lines[1].split.map(&:to_i).reverse
  reverse_numbers.each { |number| puts number }
rescue StandardError => e
  p "raise: error", e
end
