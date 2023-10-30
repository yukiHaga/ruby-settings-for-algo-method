# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  # l = 0, r = height.length - 1だとする
  # a[l]とa[r]でたとえばa[l]のが小さい場合、
  # rをheight.length - 1以外のどんな値にしても、a[l] * a[r]が一番でかい
  # 最大値を求めるのが今回の問題だから、最小値をわざわざ調べなくても良い
  # a[l]とa[r]のうち、小さい方をずらす。
  # でかい方の高さを維持して、最大値の面積を探せば良い

  l = 0
  r = height.length - 1
  s = 0

  while (r - l).positive?
    tmp = (r - l) * [height[l], height[r]].min
    s = tmp if tmp > s
    # こうもかける
    s = [s, tmp].max

    if height[l] >= height[r]
      r -= 1
    else
      l += 1
    end
  end

  s
end

# height = [1,8,6,2,5,4,8,3,7]
height =[1, 1]
p max_area(height)
