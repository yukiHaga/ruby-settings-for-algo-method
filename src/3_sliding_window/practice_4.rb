# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  l = 0
  r = 0
  zero_count = 1
  max_one_lenght = 0

  while zero_count >= 0
    if r > nums.length - 1
      # 最大の長さを計算する
      # -1はzero_countの分
      total_length = (r - 1) - l + 1 - 1
      max_one_lenght = total_length if total_length > max_one_lenght
      break
    end

    if nums[r].zero?
      if zero_count.positive?
        zero_count -= 1
        r += 1
      else
        # 最大の長さを計算する
        # -1はzero_countの分
        total_length = (r - 1) - l + 1 - 1
        max_one_lenght = total_length if total_length > max_one_lenght

        # 次のウインドウのセットアップをする
        zero_count += 1 if nums[l] == 0
        l += 1
      end
    else
      r += 1
    end
  end

  max_one_lenght
end

# nums = [1,1,0,1]
# output 3
# nums = [0,1,1,1,0,1,1,0,1]
# output 5
nums = [1,1,1]
# output 2

p longest_subarray(nums)
