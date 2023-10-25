# 挿入ソート
# バブルソートと似ている

# @params [Array<Integer>] numbers
def insertion_sort(numbers:)
  (1..numbers.length - 1).each do |k|
    position = k
    while position.positive? && numbers[position - 1] > numbers[position]
      numbers[position - 1], numbers[position] = numbers[position], numbers[position - 1]
      position -= 1
    end

    puts numbers.join(" ")
  end

  numbers
end

begin
  lines = readlines.map(&:chomp)
  # numbers_count = lines[0].to_i
  numbers = lines[1].split.map(&:to_i)

  insertion_sort(numbers: numbers)
  # p sorted_numbers
rescue StandardError => e
  p "raise error:", e.message
end
