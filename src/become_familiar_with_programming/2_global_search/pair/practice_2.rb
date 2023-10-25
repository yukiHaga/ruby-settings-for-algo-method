begin
  minimum_number, maximum_number = gets.chomp.split.map(&:to_i)
  one_place_equal_count = 0
  (minimum_number..maximum_number).each do |number|
    (number + 1..maximum_number).each do |another_number|
      (number % 10) == (another_number % 10) && one_place_equal_count += 1
    end
  end
  puts one_place_equal_count
rescue StandardError => e
  p "raise: error", e
end
