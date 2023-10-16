begin
  lines = readlines.map(&:chomp)
  # インデックス1以降の要素をまとめて配列として取得する
  _, *words = lines
  direction_counter = Hash.new(0)
  words.each { |word| direction_counter[word] += 1 }
  if direction_counter["left"] > direction_counter["right"]
    puts "left"
  elsif direction_counter["left"] < direction_counter["right"]
    puts "right"
  elsif direction_counter["left"] == direction_counter["right"]
    puts "same"
  end
rescue StandardError => e
  p "raise: error", e
end
