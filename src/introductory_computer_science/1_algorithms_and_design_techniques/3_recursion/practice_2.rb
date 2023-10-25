# @param [Integer] number
# return [Integer]
def get_fibonacci_number(number:)
  return 0 if number.zero?
  return 1 if number == 1

  get_fibonacci_number(number: number - 1) + get_fibonacci_number(number: number - 2)
end

begin
  number = gets.chomp.to_i
  fibonacci_number = get_fibonacci_number(number: number)
  puts fibonacci_number
rescue StandardError => e
  p "raise error", e.message
end
