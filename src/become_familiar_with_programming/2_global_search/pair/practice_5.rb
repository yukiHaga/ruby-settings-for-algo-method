begin
  lines = readlines.map(&:chomp)
  word_length = lines[0].to_i
  word = lines[1]
  same_letter_count = 0

  (0..word_length - 1).each do |i|
    (i + 1..word_length - 1).each do |j|
      word[i] == word[j] && same_letter_count += 1
    end
  end

  puts same_letter_count
rescue StandardError => e
  p "raise: error", e
end
