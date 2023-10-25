begin
  numbers_count = gets.chomp.to_i
  numbers = (1..numbers_count).entries

  while numbers.length > 1
    numbers.shift
    numbers.push(numbers.shift)
  end

  puts numbers.first
rescue StandardError => e
  p "raise error:", e
end
