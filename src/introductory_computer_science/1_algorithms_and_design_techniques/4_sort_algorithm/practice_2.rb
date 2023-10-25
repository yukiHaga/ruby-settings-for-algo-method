# 選択ソート

# @params [Array<Integer>] numbers
def selection_sort(numbers:)
  (0..numbers.length - 2).each do |i|
    minimum_number = numbers[i..].min
    minimum_number_index = numbers[i..].find_index(minimum_number)
    numbers[i], numbers[minimum_number_index + i] = numbers[minimum_number_index + i], numbers[i]
    puts numbers.join(" ")
  end
  numbers
end

begin
  lines = readlines.map(&:chomp)
  # numbers_count = lines[0].to_i
  numbers = lines[1].split.map(&:to_i)

  selection_sort(numbers: numbers)
  # p sorted_numbers
rescue StandardError => e
  p "raise error:", e.message
end
