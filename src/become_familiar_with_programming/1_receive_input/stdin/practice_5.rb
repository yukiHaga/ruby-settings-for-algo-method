begin
  current_time = gets.chomp.to_i
  day_change_time = 24 - current_time
  puts day_change_time
rescue StandardError => e
  p "raise: error", e
end
