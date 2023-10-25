begin
  target_number = gets.chomp.to_i
  count = 0
  (1..target_number).each { |number| target_number % number == 0 && count += 1 }
  puts count
rescue StandardError => e
  p "raise: error", e
end
