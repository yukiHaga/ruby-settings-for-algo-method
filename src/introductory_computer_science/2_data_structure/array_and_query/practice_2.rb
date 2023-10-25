begin
  index = gets.chomp.to_i
  numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]

  puts numbers[index]
rescue StandardError => e
  p "raise: error", e
end
