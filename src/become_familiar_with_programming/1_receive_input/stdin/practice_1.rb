begin
  number = gets.chomp.to_i
  puts number * 2
rescue StandardError => e
  p "raise: error", e
end
