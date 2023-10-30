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
def max_level_sum(root)
  queue = []
  level = 1
  max_sum = root.val
  max_sum_level = 1

  # level1の処理は事前にやっておく
  queue.push(root.left) if root.left
  queue.push(root.right) if root.right

  until queue.empty?
    node_length = queue.length
    sum = 0

    # timesはインデックス0の分を含まないから注意
    node_length.times do
      node = queue.shift
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
      sum += node.val
    end

    level += 1
    if sum > max_sum
      max_sum = sum
      max_sum_level = level
    end
  end

  max_sum_level
end

leaf_1 = TreeNode.new(7,nil, nil)
leaf_2 = TreeNode.new(-8, nil, nil)
leaf_3 = TreeNode.new(0, nil, nil)
parent_1 = TreeNode.new(7, leaf_1, leaf_2)
root = TreeNode.new(1, parent_1, leaf_3)

p max_level_sum(root)

