FIFTY_YEN = 50
TEN_YEN = 10
FIVE_YEN = 5
ONE_YEN = 1

begin
  lines = readlines.map(&:chomp)
  price = lines[0].to_i
  coin_counts = lines[1].split.map(&:to_i)

  coin_counter = Hash.new(0)
  [FIFTY_YEN, TEN_YEN, FIVE_YEN, ONE_YEN].each_with_index do |coin, i|
    coin_counter[coin] = [price / coin, coin_counts[i]].min
    price -= coin * coin_counter[coin]
  end

  puts coin_counter.values.sum
rescue StandardError => e
  p "raise: error", e
end
