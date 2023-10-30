# @param {String} s
# @return {String}
def decode_string(s)
  encode_chars = s.scan(/\d+|[^\[\]\d]+|[\[\]]/)
  # スタックを用意
  num_stack = []
  char_stack = []
  decode_chars = []

  until encode_chars.empty?
    encode_char = encode_chars.shift

    case encode_char
    when "]"
      poped_char = char_stack.pop
      tmp_chars = []

      while poped_char != "["
        tmp_chars.push(poped_char)
        poped_char = char_stack.pop
      end

      num = num_stack.pop
      decode_char = tmp_chars.join * num

      if char_stack.last == "["
        char_stack.push(decode_char)
      else
        decode_chars.push(decode_char)
      end

    when /[a-z]|\[/
      char_stack.push(encode_char)
    when /\d+/
      num_stack.push(encode_char.to_i)
    end
  end

  decode_chars.join
end

# s = "3[a]2[bc]"
# s = "3[a2[c]]"
# s = "2[abc]3[cd]ef"
# s = "100[leetcode]"
s ="3[z]2[2[y]pq4[2[jk]e1[f]]]ef"

p decode_string(s)
