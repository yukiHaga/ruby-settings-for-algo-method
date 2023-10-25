begin
  lines = readlines.map(&:chomp)
  numbers = lines[1].split.map(&:to_i)
  number_counter = Hash.new(0)
  numbers.each { |number| number_counter[number] += 1 }
  maximum_count = number_counter.values.max
  most_appear_number = number_counter.key(maximum_count)
  puts most_appear_number
rescue StandardError => e
  p "raise: error", e
end
