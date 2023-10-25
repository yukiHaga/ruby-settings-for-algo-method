# @param [String] word
# @return [Boolean]
def palindrome?(word)
  (0..(word.length / 2)).each do |index|
    return false unless word[index] == word[word.length - (index + 1)]
  end

  true
end

begin
  lines = readlines.map(&:chomp)
  words_count, words = lines[0].to_i, lines[1..]
  palindromes_count = 0
  (0..words_count - 1).each { |i| palindrome?(words[i]) && palindromes_count += 1 }
  puts palindromes_count
rescue StandardError => e
  p "raise: error", e
end
