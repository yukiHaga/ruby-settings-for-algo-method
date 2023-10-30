# それぞれの決められたウインドウ(部分配列)に対して処理をするなら、
# スライディングウインドウアルゴリズムが使える

# @param {String} s
# @param {Integer} k
# @return {Integer}
def max_vowels(s, k)
  sub_word = s[0..k - 1]
  total_count = sub_word.scan(/[aeiou]/).count
  max_count = total_count

  ((k - 1)..s.length - 2).each do |i|
    total_count -= s[i - (k - 1)].scan(/[aeiou]/).count
    total_count += s[i + 1].scan(/[aeiou]/).count

    # 既存のmax_countより大きいなら代入する
    max_count = total_count if total_count > max_count
  end

  max_count
end