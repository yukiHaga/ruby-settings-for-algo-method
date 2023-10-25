begin
  lines = readlines.map(&:chomp)
  numbers = lines[1].split.map(&:to_i)
  number_counter = {
    1 => 0,
    2 => 0,
    3 => 0,
    4 => 0,
    5 => 0,
    6 => 0,
    7 => 0,
    8 => 0,
    9 => 0
  }

  numbers.each { |number| number_counter[number] += 1 }

  number_counter.each do |_, value|
    puts value
  end
rescue StandardError => e
  p "raise: error", e
end
