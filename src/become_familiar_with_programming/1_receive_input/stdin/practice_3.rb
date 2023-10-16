begin
  word = gets.chomp
  puts word * 3
rescue StandardError => e
  p "raise: error", e
end
