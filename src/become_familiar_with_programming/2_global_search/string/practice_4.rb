begin
  lines = readlines.map(&:chomp)
  word_length = lines[0].to_i
  word = lines[1]
  another_word = lines[2]
  replace_count = 0

  (0..(word_length - 1)).each do |i|
    word[i] != another_word[i] && replace_count += 1
  end

  puts replace_count
rescue StandardError => e
  p "raise: error", e
end
