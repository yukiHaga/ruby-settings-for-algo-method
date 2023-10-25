begin
  number = gets.chomp.to_i

  start_number = 0
  end_number = 100
  while (end_number - start_number) > 1e-4
    center_number = (start_number + end_number) / 2
    result_number = center_number * (center_number * (center_number + 1) + 2) + 3
    if result_number < number
      start_number = center_number
    else
      end_number = center_number
    end
  end

  solution = start_number
  puts solution
rescue StandardError => e
  p "raise: error", e
end
