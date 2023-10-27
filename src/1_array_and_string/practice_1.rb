# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  merge_word = ""
  while !(word1.empty?) && !(word2.empty?)
    p word1
    p word2
    merge_word.concat(word1[0], word2[0])
    word1 = word1[1..]
    word2 = word2[1..]
  end

  merge_word.concat(word1) unless word1.empty?
  merge_word.concat(word2) unless word2.empty?

  merge_word
end

word1 = "ab"
word2 = "pqrs"

p merge_alternately(word1, word2)
