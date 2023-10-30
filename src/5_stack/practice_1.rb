# @param {String} s
# @return {String}
def remove_stars(s)
  # これがスタックのデータ構造だとする
  letters = []

  s.each_char do |char|
    if char == "*"
      letters.pop
    else
      letters.push(char)
    end
  end

  letters.join
end

s = "leet**cod*e"
p remove_stars(s)