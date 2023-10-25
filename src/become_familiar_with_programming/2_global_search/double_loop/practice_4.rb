begin
  letters = gets.chomp.split("")
  letter_counter = Hash.new(0)
  letters.each { |letter| letter_counter[letter] += 1 }
  puts letter_counter.keys.length
rescue StandardError => e
  p "raise: error", e
end
