begin
  numbers = gets.chomp.split.map(&:to_i)
  average_number = numbers.sum / numbers.length
  puts average_number
rescue StandardError => e
  p "raise: error", e
end
