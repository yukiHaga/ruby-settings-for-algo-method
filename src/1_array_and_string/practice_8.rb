# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
  return false if nums.length < 3

  # 計算量デカすぎて当たりまえだがダメだった
  # (0..nums.length - 1).each do |i|
  #   (i + 1..nums.length - 1).each do |j|
  #     if nums[i] < nums[j]
  #       (j + 1..nums.length - 1).each do |k|
  #         if nums[j] < nums[k]
  #           return true
  #         end
  #       end
  #     end
  #   end
  # end

  # 計算量の問題。やっぱminとかmaxだとループしているもんね
  # (1..nums.length - 2).each do |i|
  #   if nums[i] > nums[0..i - 1].min && nums[i] < nums[i + 1..].max
  #     return true
  #   end
  # end

  min_num = nums[0]
  max_num = nums[-1]
  # インデックスiごとの 0 ~ i - 1の最小値を入れた
  min_nums = []
  # インデックスiごとの i +1 ~ -1の最大値を入れた
  max_nums = []

  nums[1..(nums.length - 2)].each do |num|
    min_nums.push(min_num)
    num < min_num && min_num = num
  end

  nums[1..(nums.length - 2)].reverse_each do |num|
    max_nums.unshift(max_num)
    num > max_num && max_num = num
  end

  nums[1..(nums.length - 2)].each do |num|
    min_num = min_nums.shift
    max_num = max_nums.shift

    return true if num > min_num && num < max_num
  end

  false
end

# nums = [1,2,3,4,5]
# => true
# nums = [5,4,3,2,1]
# => false
# nums = [2,1,5,0,4,6]
# => true
# nums = [20,100,10,12,5,13]
# => true
# nums = [2,1,5,6,4,0]

p increasing_triplet(nums)