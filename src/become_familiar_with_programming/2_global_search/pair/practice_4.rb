begin
  lines = readlines.map(&:chomp)
  words_count, words = lines[0].to_i, lines[1..]
  same_word_count = 0

  (0..words_count - 1).each do |i|
    (i + 1..words_count - 1).each do |j|
      words[i] == words[j] && same_word_count += 1
    end
  end

  if same_word_count.positive?
    puts "Yes"
  else
    puts "No"
  end
rescue StandardError => e
  p "raise: error", e
end
