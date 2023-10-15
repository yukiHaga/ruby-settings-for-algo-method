begin
  words = readlines.map(&:chomp).reverse
  puts words.join
rescue StandardError => e
  p "raise: error", e
end
