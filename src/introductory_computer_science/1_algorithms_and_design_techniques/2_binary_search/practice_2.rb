# @param [Integer] current_deposit
# @param [Integer] expected_deposit
# return [Integer]
# 年数も受け取るように設計したらより汎用性がます。てかそっちのが本当は良い
def calc_interest_for_expected_deposit_after_5_years(current_deposit, expected_deposit)
  start_number = 0
  end_number = 100


  while (end_number - start_number) > 1e-4
    center_number = (start_number + end_number) / 2
    interest_to_fifth = center_number**5
    interest_to_fourth = center_number**4
    interest_cubed = center_number**3
    interest_squared = center_number**2

    result_number = (current_deposit + 1) * interest_to_fifth + interest_to_fourth + interest_cubed + interest_squared + center_number + 1

    if result_number < expected_deposit
      start_number = center_number
    else
      end_number = center_number
    end
  end

  # 答えは left 以上 right 以下であることがわかっている。
  # 精度は十分なので、ここでは left の値を出力する。
  start_number
end

begin
  current_deposit, expected_deposit = gets.chomp.split.map(&:to_i)
  interest = calc_interest_for_expected_deposit_after_5_years(current_deposit, expected_deposit)
  puts interest
rescue StandardError => e
  p "raise: error", e
end
