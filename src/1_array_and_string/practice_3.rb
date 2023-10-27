# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
# def kids_with_candies(candies, extra_candies)
#   result = Array.new(candies.length, false)
#   candies.each_with_index do |_, i|
#     candies[i] += extra_candies
#     maximum_candy_count = candies.max
#     if candies[i] == maximum_candy_count
#       result[i] = true
#     end
#     candies[i] -= extra_candies
#   end

#   result
# end

# もっと簡単に解ける
def kids_with_candies(candies, extra_candies)
  maximum_candiy = candies.max
  candies.map { |candy| candy + extra_candies >= maximum_candiy }
end

# c = [2,3,5,1,3]
# e = 3
# c = [4,2,1,1,2]
# e = 1
# c = [12,1,12]
# e = 10
c = [2,8,7]
e = 1
p kids_with_candies(c, e)
