begin
  sweets_count = gets.chomp.to_i
  maked_sweets_days = 0

  loop do
    if (sweets_count % 3).zero?
      sweets_count /= 3
    else
      sweets_count -= 1
    end

    maked_sweets_days += 1
    break if sweets_count.zero?
  end

  puts maked_sweets_days
rescue StandardError => e
  p "raise: error", e
end
