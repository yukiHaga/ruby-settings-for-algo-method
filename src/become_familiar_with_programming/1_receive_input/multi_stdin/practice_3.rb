begin
  numbers = gets.chomp.split.map(&:to_i)
  minimum_number = numbers.reduce do |result, number|
    number % 10 < result % 10 && result = number
    result
  end
  puts minimum_number
rescue StandardError => e
  p "raise: error", e
end
