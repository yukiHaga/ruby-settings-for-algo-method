# @param [String] word
# @return [Boolean]
def palindrome?(word)
  (0..(word.length / 2)).each do |index|
    return false unless word[index] == word[word.length - (index + 1)]
  end

  true
end

begin
  word = gets.chomp
  if palindrome?(word)
    puts "Yes"
  else
    puts "No"
  end
rescue StandardError => e
  p "raise: error", e
end
