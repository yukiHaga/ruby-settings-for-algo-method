# @param [Array<Integer>]
# return [Array<Integer>]
def quick_sort(numbers)
  return numbers if numbers.length == 1
  return numbers if numbers.empty?

  standard_number = (numbers.length / 2).floor
  left_numbers = numbers.filter.with_index { |number, i| i != standard_number && number < numbers[standard_number] }
  right_numbers = numbers.filter.with_index { |number, i| i != standard_number && number >= numbers[standard_number] }

  sorted_left_numbers = quick_sort(left_numbers)
  sorted_right_numbers = quick_sort(right_numbers)

  sorted_left_numbers.push(numbers[standard_number]).concat(sorted_right_numbers)
end

begin
  lines = readlines.map(&:chomp)
  # numbers_count = lines[0].to_i
  numbers = lines[1].split.map(&:to_i)

  sorted_numbers = quick_sort(numbers)
  puts sorted_numbers.join(" ")
rescue StandardError => e
  p "raise error:", e.message
end
