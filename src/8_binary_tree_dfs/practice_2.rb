# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def get_leaves(root)
  leaves = []

  return leaves if root.nil?

  if root.left.nil? && root.right.nil?
    leaves.push(root.val)
    return leaves
  end

  left_leaves = get_leaves(root.left)
  right_leaves = get_leaves(root.right)

  left_leaves.concat(right_leaves)
end

# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  leaves_1 = get_leaves(root1)
  leaves_2 = get_leaves(root2)
  leaves_1 == leaves_2
end

# leaf_1 = TreeNode.new(6, nil, nil)
# leaf_2 = TreeNode.new(7, nil, nil)
# leaf_3 = TreeNode.new(4, nil, nil)
# leaf_4 = TreeNode.new(9, nil, nil)
# leaf_5 = TreeNode.new(8, nil, nil)
# parent_1 = TreeNode.new(2, leaf_2, leaf_3)
# parent_2 = TreeNode.new(1, leaf_4, leaf_5)
# parent_3 = TreeNode.new(5, leaf_1, parent_1)
# root= TreeNode.new(3, parent_3, parent_2)

leaf_1 = TreeNode.new(2, nil, nil)
root = TreeNode.new(1, leaf_1, nil)

p get_leaves(root)