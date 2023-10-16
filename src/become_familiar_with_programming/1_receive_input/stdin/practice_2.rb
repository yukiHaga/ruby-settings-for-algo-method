begin
  number = gets.chomp.to_i
  remainder = number % 5
  puts remainder
rescue StandardError => e
  p "raise: error", e
end
