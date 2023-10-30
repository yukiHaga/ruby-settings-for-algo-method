# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?

  unless root.nil?
    left_depth = max_depth(root.left)
    right_depth = max_depth(root.right)
  end

  1 + [left_depth, right_depth].max
end

leaf_1 = TreeNode.new(9, nil, nil)
leaf_2 = TreeNode.new(15, nil, nil)
leaf_3 = TreeNode.new(7, nil, nil)
parent_1 = TreeNode.new(20, leaf_2, leaf_3)
root = TreeNode.new(3, leaf_1, parent_1)

# p max_depth(root)

sales = [10, 20, 15, 20]
acc_sales = []

# sales.each_with_index do |_, i|
#   # reduceは要素が一つしか存在しないなら、プロックを実行せずに最初の要素を返す
#   acc_sale = sales[0..i].reduce { |result, sale| result + sale }
#   acc_sales.push(acc_sale)
# end

i = 0
sum = 0

while i <= sales.length - 1
  sum += sales[i]
  acc_sales.push(sum)
  i += 1
end

p acc_sales



