# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  # str1を長い文字列にする
  str1, str2 = str2, str1 if str2 >= str1
  until str2.empty?
    splited_string = str1.split(str2)
    # str1とstr2が絶対に一致しないパターン
    return "" if str1 == splited_string[0]
    return str2 if splited_string.empty?

    str1 = str2
    str2 = splited_string[-1]
  end

  str1
end

str1 = "LEET"
str2 = "CODE"
p gcd_of_strings(str1, str2)
