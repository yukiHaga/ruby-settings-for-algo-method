# @param [String] word
# @return [Boolean]
def palindrome?(word)
  (0..(word.length / 2)).each do |index|
    return false unless word[index] == word[word.length - (index + 1)]
  end

  true
end

begin
  start_number, end_number = gets.chomp.split.map(&:to_i)
  palindrome_count = 0

  (start_number..end_number).each do |number|
    word = number.to_s
    palindrome?(word) && palindrome_count += 1
  end
  puts palindrome_count
rescue StandardError => e
  p "raise: error", e
end
