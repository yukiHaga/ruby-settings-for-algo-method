begin
  lines = readlines.map(&:chomp)
  long_word = lines[0]
  short_word = lines[1]

  if long_word.include?(short_word)
    puts "Yes"
  else
    puts "No"
  end
rescue StandardError => e
  p "raise: error", e
end
