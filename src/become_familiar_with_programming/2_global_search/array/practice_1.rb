begin
  lines = readlines
  _, target = lines[0].split.map(&:to_i)
  numbers = lines[1].split.map(&:to_i)

  if numbers.include?(target)
    puts "Yes"
  else
    puts "No"
  end
rescue StandardError => e
  p "raise: error", e
end
