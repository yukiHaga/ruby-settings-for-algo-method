begin
  lines = readlines.map(&:chomp)
  n, m, k = lines[0].split.map(&:to_i)
  numbers = lines[1].split.map(&:to_i)
  other_numbers = lines[2].split.map(&:to_i)
  equal_count = 0

  (0..n - 1).each do |i|
    (0..m - 1).each do |j|
      numbers[i] + other_numbers[j] == k && equal_count += 1
    end
  end

  puts equal_count
rescue StandardError => e
  p "raise: error", e
end
