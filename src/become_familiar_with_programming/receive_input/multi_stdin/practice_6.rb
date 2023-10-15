begin
  numbers = gets.chomp.split.map(&:to_i)
  maximum_number = numbers.max
  puts maximum_number
rescue StandardError => e
  p "raise: error", e
end
