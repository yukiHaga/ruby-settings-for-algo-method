# @param {String} word1
# @param {String} word2
# @return {Boolean}
def close_strings(word1, word2)
  word1_hash = word1.chars.tally
  word2_hash = word2.chars.tally
  word1_counts = word1_hash.values.sort
  word2_counts = word2_hash.values.sort

  word1_hash.keys.sort == word2_hash.keys.sort && word1_counts == word2_counts
end

# word1 = "uau"
# word2 = "ssx"
word1 = "abc"
word2 = "bca"

p close_strings(word1, word2)