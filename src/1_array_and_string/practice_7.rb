# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  # これだと計算量がo(n ^ 2)かかる
  # products = nums.map.with_index do |_, i|
  #   i.zero? ? nums[1..].reduce(:*) : nums[0...i].concat(nums[i + 1..]).reduce(:*)
  # end
  # products

  left_product = 1
  right_product = 1
  products = []

  nums.each do |n|
    products.push(right_product)
    right_product *= n
  end

  nums.each_with_index.reverse_each do |n, i|
    products[i] *= left_product
    left_product *= n
  end

  products
end

nums = [-1,1,0,-3,3]
p product_except_self(nums)