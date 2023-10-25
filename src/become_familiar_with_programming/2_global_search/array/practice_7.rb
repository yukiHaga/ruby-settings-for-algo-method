begin
  lines = readlines.map(&:chomp)
  numbers = lines[1].split.map(&:to_i)

  maximum_number_index = 0
  numbers.each_with_index.reduce do |result, (element, index)|
    if result[0] < element
      maximum_number_index = index
      result = [element, index]
    end
    result
  end

  puts maximum_number_index
rescue StandardError => e
  p "raise: error", e
end
