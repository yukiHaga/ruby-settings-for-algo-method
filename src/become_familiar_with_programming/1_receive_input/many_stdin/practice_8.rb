begin
  lines = readlines.map(&:chomp)
  # インデックス1以降の要素をまとめて配列として取得する
  _, *words = lines
  joined_word = words.join
  puts joined_word.length
rescue StandardError => e
  p "raise: error", e
end
