begin
  maximum_number = gets.chomp.to_i
  count = 0
  for number in 1..maximum_number
    number % 2 != 0 && number % 3 != 0 && number % 5 != 0 && count += 1
  end

  puts count
rescue StandardError => e
  p "raise: error", e
end
