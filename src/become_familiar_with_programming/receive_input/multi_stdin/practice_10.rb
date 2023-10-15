begin
  words = readlines.map(&:chomp)
  word = words[0]
  indexes = words[1].split.map(&:to_i)
  word[indexes[0]], word[indexes[1]] = word[indexes[1]], word[indexes[0]]
  puts word
rescue StandardError => e
  p "raise: error", e
end
