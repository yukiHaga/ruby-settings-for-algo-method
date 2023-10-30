# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def longest_ones(nums, k)
  max_count = 0
  i = 0
  j = 0
  c = k

  while j <= nums.length - 1 && i <= j
    if nums[j] == 1
      j += 1
    elsif nums[j].zero?
      if c.positive?
        j += 1
        c -= 1
      else
        # これ以上区間を拡張できない時の処理
        # jは動かず、iを動かす
        # 本当にnumsが変わっているわけではなくて、cが減っているだけ
        total_count = ((j - 1) - i) + 1
        max_count = total_count if total_count >= max_count
        c += 1 if nums[i].zero? && k > 0
        i += 1

        # i + 1番目に関しては、以前のウインドウでc -= 1しているはずだから、0かどうかは考慮しなくて良い
        j = i if j <= i
      end
    end

    if j == nums.length
      total_count = ((j - 1) - i) + 1
      max_count = total_count if total_count >= max_count
    end
  end

  max_count
end

# nums = [1,1,1,0,0,0,1,1,1,1,0]
# k = 2
# output 6
# nums = [0,0,1,1,1,0,0]
# k = 0
# output 3

# nums = [0,0,0,1]
# k = 4
# output 4


p longest_ones(nums, k)
