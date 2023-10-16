begin
  numbers = gets.chomp.split.map(&:to_i)
  if (numbers[0] % numbers[1]).zero?
    puts "Yes"
  else
    puts "No"
  end
rescue StandardError => e
  p "raise: error", e
end
