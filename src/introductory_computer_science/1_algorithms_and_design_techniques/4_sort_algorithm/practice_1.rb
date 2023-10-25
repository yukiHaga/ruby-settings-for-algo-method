# バブルソート
# バブルソートは与えられた配列以外の記憶領域が不要

# @params [Array<Integer>] numbers
def bubble_sort(numbers:)
  (0..numbers.length - 1).each do |i|
    exchange_count = 0

    (1..(numbers.length - (i + 1))).each do |j|
      if numbers[j - 1] > numbers[j]
        numbers[j - 1], numbers[j] = numbers[j], numbers[j - 1]
        exchange_count += 1
      end
    end

    # 上のループの隣り合う2項の比較で、一度も要素が交換されなかったら、処理を終了する
    break if exchange_count.zero?

    puts numbers.join(" ")
  end

  numbers
end

begin
  lines = readlines.map(&:chomp)
  # numbers_count = lines[0].to_i
  numbers = lines[1].split.map(&:to_i)

  bubble_sort(numbers: numbers)
  # p sorted_numbers
rescue StandardError => e
  p "raise error:", e.message
end
