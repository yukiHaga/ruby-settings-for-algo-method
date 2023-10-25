begin
  lines = readlines
  _, target = lines[0].split.map(&:to_i)
  numbers = lines[1].split.map(&:to_i)

  far_right_target_index = -1
  numbers.each_with_index do |number, index|
    number == target && far_right_target_index = index
  end
  puts far_right_target_index
rescue StandardError => e
  p "raise: error", e
end
