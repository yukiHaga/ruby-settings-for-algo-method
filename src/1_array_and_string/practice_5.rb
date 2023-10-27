# class Stack
#   attr_reader :values

#   # @param [Array<{ letter: String, index: Integer }>] values
#   def initialize(values: [])
#     @values = values
#   end

#   # @param [{ letter: String, index: Integer }] value
#   def push(value)
#     values.push(value)
#   end

#   # return [String]
#   def pop
#     values.pop
#   end
# end

# # @param {String} s
# # @return {String}
# def reverse_vowels(s)
#   values = s.split("")
#   vowel_stack = Stack.new

#   values.each_with_index do |value, i|
#     if %w[a e i o u A E I O U].include?(value)
#       vowel_stack.push({ letter: value, index: i })
#     end
#   end

#   (0..vowel_stack.values.length / 2 - 1).each do |i|
#     vowel_stack.values[i][:letter], vowel_stack.values[- (i + 1)][:letter] = vowel_stack.values[- (i + 1)][:letter], vowel_stack.values[i][:letter]
#   end

#   vowel_stack.values.each do |value|
#     values[value[:index]] = value[:letter]
#   end

#   values.join("")
# end

# もっと綺麗にかける
# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = s.scan(/[aeiou]/i)
  s.gsub(/[aeiou]/i) { vowels.pop }
end

# s = "hello"
# s = "leetcode"
s ="aA"
p reverse_vowels(s)
