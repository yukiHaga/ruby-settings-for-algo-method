begin
  a, b = gets.chomp.split.map(&:to_i)

  loop do
    remainder_number = b % a
    break if remainder_number.zero?

    b = a
    a = remainder_number
  end

  puts a
rescue StandardError => e
  p "raise: error", e
end
