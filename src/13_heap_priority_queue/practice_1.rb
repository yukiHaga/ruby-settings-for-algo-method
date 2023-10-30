# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  nums.sort.reverse[k]
end

nums = [3,2,1,5,6,4]
p find_kth_largest(nums, 2)