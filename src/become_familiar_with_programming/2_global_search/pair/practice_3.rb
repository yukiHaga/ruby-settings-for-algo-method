begin
  lines = readlines.map(&:chomp)
  numbers_count = lines[0].to_i
  numbers = lines[1].split.map(&:to_i)
  middle_maximum_number_count = 0

  (0..numbers_count - 1).each do |i|
    (i + 1..numbers_count - 1).each do |j|
      (j + 1..numbers_count - 1).each do |k|
        numbers[j] == [numbers[i], numbers[j], numbers[k]].max && middle_maximum_number_count += 1
      end
    end
  end

  puts middle_maximum_number_count
rescue StandardError => e
  p "raise: error", e
end
