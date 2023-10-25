# @param [Integer] target
# @return [Array<Integer>]
def get_divisors_by_target(target)
  (1..target).filter { |number| (target % number).zero? }
end

begin
  n, k = gets.chomp.split.map(&:to_i)
  divisor_count = 0
  (1..n).each do |number|
    divisors = get_divisors_by_target(number)
    divisors.length == k && divisor_count += 1
  end

  puts divisor_count

rescue StandardError => e
  p "raise: error", e
end
