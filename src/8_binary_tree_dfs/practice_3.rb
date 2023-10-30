# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}

def good_nodes(root)
  good_nodes_count(root, root.val)
end

def good_nodes_count(root, max_value)
  return 0 if root.nil?

  max_value = root.val if root.val > max_value

  if root.left.nil? && root.right.nil?
    if root.val == max_value
      return 1
    else
      return 0
    end
  end

  left_good_nodes_count = good_nodes_count(root.left, max_value)
  right_good_nodes_count = good_nodes_count(root.right, max_value)

  total_good_nodes_count = left_good_nodes_count + right_good_nodes_count
  total_good_nodes_count += 1 if root.val == max_value
  total_good_nodes_count
end
