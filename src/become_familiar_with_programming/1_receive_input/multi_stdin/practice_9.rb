begin
  words = readlines.map(&:chomp)
  word = words[0]
  index = words[1].to_i - 1
  puts word[index]
rescue StandardError => e
  p "raise: error", e
end
