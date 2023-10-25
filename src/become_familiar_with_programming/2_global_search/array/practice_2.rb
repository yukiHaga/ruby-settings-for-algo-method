begin
  lines = readlines
  _, target = lines[0].split.map(&:to_i)
  numbers = lines[1].split.map(&:to_i)

  puts numbers.count(target)
rescue StandardError => e
  p "raise: error", e
end
