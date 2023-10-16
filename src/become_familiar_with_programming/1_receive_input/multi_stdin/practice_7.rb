begin
  words = readlines.map(&:chomp)
  # words = gets.chomp.split
  if words[0] == words[1]
    puts "Yes"
  else
    puts "No"
  end
rescue StandardError => e
  p "raise: error", e
end
