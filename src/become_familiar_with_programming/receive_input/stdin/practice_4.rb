begin
  word = gets.chomp
  center_index = word.length / 2
  puts word[center_index.ceil]
rescue StandardError => e
  p "raise: error", e
end
