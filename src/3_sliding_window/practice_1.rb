# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  # sums = []
  # first = 0
  # last = k - 1
  # sub_array = nums[first..last]

  # while last <= nums.length - 1
  #   sums.push(sub_array.sum)
  #   first += 1
  #   last += 1
  #   sub_array.shift
  #   break unless nums[last]

  #   sub_array.push(nums[last])
  # end


  # (sums.max / k.to_f).round(5)

  return nums.sum.fdiv(k) if nums.length == k

  first = 0
  sum = nums[first..(k - 1)].sum
  max_sum = sum

  ((k - 1)...nums.length - 1).each do |i|
    sum += nums[i + 1]
    sum -= nums[i - (k - 1)]
    # 既存のmax_sumよりsumが大きいなら、sumをmax_sumに代入する
    max_sum = sum if sum > max_sum
  end


  max_sum.fdiv(k)
end

nums = [1,12,-5,-6,50,3]
k = 4
# nums = [5]
# k = 1
p find_max_average(nums, k)