# 最低なので、できるだけ5円を使う
begin
  price = gets.chomp.to_i

  # 部分問題に分ける
  five_yen_count = price / 5
  one_yen_count = price % 5

  # 部分問題の解を評価値の高い順に取り込んでいって問題の解を出す
  minimuim_required_coin_count = five_yen_count + one_yen_count
  puts minimuim_required_coin_count
rescue StandardError => e
  p "raise: error", e
end
