begin
  lines = readlines.map(&:chomp)
  x, y, z = lines[0].split.map(&:to_i)
  numbers = lines[1].split.map(&:to_i)
  other_numbers = lines[2].split.map(&:to_i)
  another_numbers = lines[3].split.map(&:to_i)
  equal_count = 0

  (0..x - 1).each do |i|
    (0..y - 1).each do |j|
      (0..z - 1).each do |k|
        numbers[i] + other_numbers[j] == another_numbers[k] && equal_count += 1
      end
    end
  end

  puts equal_count
rescue StandardError => e
  p "raise: error", e
end
