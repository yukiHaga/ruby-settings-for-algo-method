class FibonacciClient
  attr_reader :fibonacci_numbers

  # @param [Integer] end_index
  def initialize(end_number:)
    # 0の分も含める
    fibonacci_numbers = Array.new(end_number + 1, -1)
    fibonacci_numbers[0] = 0
    fibonacci_numbers[1] = 1
    @fibonacci_numbers = fibonacci_numbers
  end

  # @param [Integer] number
  # return [Integer]
  def get_fibonacci_number(number:)
    return fibonacci_numbers[number] if fibonacci_numbers[number] != -1

    fibonacci_numbers[number] = get_fibonacci_number(number: number - 1) + get_fibonacci_number(number: number - 2)
    fibonacci_numbers[number]
  end
end

begin
  end_number = gets.chomp.to_i
  fibonacci_client = FibonacciClient.new(end_number: end_number)
  fibonacci_number = fibonacci_client.get_fibonacci_number(number: end_number)
  puts fibonacci_number
rescue StandardError => e
  p "raise error", e.message
end
