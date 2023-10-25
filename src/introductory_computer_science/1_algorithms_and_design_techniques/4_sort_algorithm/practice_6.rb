# マージソート

# @param [Array<Integer>]
# return [Array<Integer>]
def merge_sort(numbers)
  return numbers if numbers.length <= 1

  # 整数 / 整数なら、デフォルトで切り捨て羅れる
  middle_index = numbers.length / 2
  left_numbers = numbers[0...middle_index]
  right_numbers = numbers[middle_index..(numbers.length - 1)]

  sorted_left_numbers = merge_sort(left_numbers)
  sorted_right_numbers = merge_sort(right_numbers)
  merge_numbers = sorted_left_numbers.concat(sorted_right_numbers.reverse)

  sorted_merge_numbers = []
  until merge_numbers.empty?
    if merge_numbers.first <= merge_numbers.last
      sorted_merge_numbers.push(merge_numbers.shift)
    else
      sorted_merge_numbers.push(merge_numbers.pop)
    end
  end

  sorted_merge_numbers
end

begin
  lines = readlines.map(&:chomp)
  # numbers_count = lines[0].to_i
  numbers = lines[1].split.map(&:to_i)

  sorted_numbers = merge_sort(numbers)
  puts sorted_numbers.join(" ")
rescue StandardError => e
  p "raise error:", e.message
end
