begin
  lines = readlines
  numbers = lines[1].split.map(&:to_i)

  less_than_count = 0
  numbers.reduce do |result, number|
    result < number && less_than_count += 1
    result = number
    result
  end

  puts less_than_count
rescue StandardError => e
  p "raise: error", e
end
