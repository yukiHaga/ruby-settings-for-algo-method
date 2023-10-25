begin
  lines = readlines.map(&:chomp)
  target = lines[0]
  word = lines[1]

  if target.include?(word)
    puts "Yes"
  else
    puts "No"
  end
rescue StandardError => e
  p "raise: error", e
end
