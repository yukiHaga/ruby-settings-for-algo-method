# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  # これでできないのが気に食わんな
  # zeros = []
  # non_zero_nums = []

  # nums.each do |num|
  #   if num.zero?
  #     zeros.push(num)
  #   else
  #     non_zero_nums.push(num)
  #   end
  # end

  # non_zero_nums.concat(zeros)

  # k = 0
  # nums.each_with_index do |_, i|
  #   next if nums[i].zero?

  #   nums[k] = nums[i]
  #   k += 1
  # end


  # 2つのポインタを使って、その2つのポインタの幅が0の数だと考えれば良い
  # a[right]が0だった場合、rigthに+1をして幅を広げる
  left = 0
  right = 0

  while right < nums.length && left <= right
    if nums[right].zero?
      right += 1
      next
    end

    # 0以外の時の処理

    # 一番手前の0とrightが指し示す0以外の値を入れ替える
    nums[left], nums[right] = nums[right], nums[left]
    left += 1

    if right < left
      right = left
    end
  end

  nums
end

# nums = [0,1,0,3,12]
# nums = [0
# nums = [0,0,1]
# nums = [0,1,0,3,12]
# nums = [0,1,0,3,12]
# nums = [1,0,1]
# nums = [1]
p move_zeroes(nums)
