# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num)

def guess(num)
  if num > 11
    return -1
  elsif num < 11
    return 1
  else
    return 0
  end
end

def guessNumber(n)
  nums = (1..n).to_a
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2
    middle_num = nums[mid]
    case guess(middle_num)
    when -1
      # pickしたものよりnumが大きい
      right = mid - 1
    when 1
      # pickしたものよりnumが小さい
      left = mid + 1
    when 0
      return middle_num
    end
  end
end

p guessNumber(10)
