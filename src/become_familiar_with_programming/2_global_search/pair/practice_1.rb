begin
  lines = readlines.map(&:chomp)
  numbers_count, result = lines[0].split.map(&:to_i)
  numbers = lines[1].split.map(&:to_i)

  result_count = 0

  (0..numbers_count - 1).each do |i|
    (i + 1..numbers_count - 1).each do |j|
      numbers[i] + numbers[j] <= result && result_count += 1
    end
  end

  puts result_count
rescue StandardError => e
  p "raise: error", e
end
