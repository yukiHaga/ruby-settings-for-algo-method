begin
  letters = gets.chomp.split("")
  same_letter_count = 0
  letters.reduce do |result, letter|
    result == letter && same_letter_count += 1
    result = letter
    result
  end
  puts same_letter_count
rescue StandardError => e
  p "raise: error", e
end
