# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_operations(nums, k)
  h = Hash.new(0)
  count = 0

  nums.each do |num|
    next if num >= k

    # num + x2 = kとすると、
    # x2 = k - num (k > num)
    # h[num], h[k - num]は、
    # このループではnumが出現した
    # そして、h[k - m]が存在することが確認できた
    # つまり、kを満たす組み合わせが存在するってこと
    if h[k - num] > 0
      h[k - num] -= 1
      count += 1
    else
      h[num] += 1
    end
  end

  count
end

# nums = [1,2,3,4]
# k = 5
# output 2
# nums = [3,1,3,4,3]
# k = 6
# output 1
nums = [4,4,1,3,1,3,2,2,5,5,1,5,2,1,2,3,5,4]
k = 2

p max_operations(nums, k)
