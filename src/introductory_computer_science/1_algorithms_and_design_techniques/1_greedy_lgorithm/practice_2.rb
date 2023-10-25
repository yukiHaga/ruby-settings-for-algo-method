begin
  sweets_count = gets.chomp.to_i

  eaten_days = 0
  # 部分問題に分ける

  one_eaten_plan_count = 0
  half_eaten_plan_count = 0

  loop do
    if sweets_count.even?
      half_eaten_plan_count += 1
      sweets_count /= 2
    elsif sweets_count.odd?
      one_eaten_plan_count += 1
      sweets_count -= 1
    end

    break if sweets_count.zero?
  end

  eaten_days = one_eaten_plan_count + half_eaten_plan_count
  puts eaten_days
rescue StandardError => e
  p "raise: error", e
end
