begin
  lines = readlines.map(&:chomp)
  three_multiples = lines[1].split.map(&:to_i).filter { |number| (number % 3).zero? }
  three_multiples.each { |three_multiple| puts three_multiple }
rescue StandardError => e
  p "raise: error", e
end
