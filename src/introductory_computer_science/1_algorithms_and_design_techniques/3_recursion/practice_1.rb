# @param [Integer] start_number
# @param [Integer] end_number
# return [Integer]
def sum_to_end_number(start_number:, end_number:)
  return 0 if end_number < start_number

  sum_to_end_number(start_number: start_number, end_number: end_number - 1) + end_number
end

begin
  start_number, end_number = gets.chomp.split.map(&:to_i)
  sum = sum_to_end_number(start_number: start_number, end_number: end_number)
  puts sum
rescue StandardError => e
  p "raise error", e.message
end
