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
# @param {Integer} target_sum
# @return {Integer}
def path_sum(root, target_sum)
  return 0 if root.nil?
  sum = 0

  count = count_path_sum_from_node(root, sum, target_sum)

  left_total_count = path_sum(root.left, target_sum)
  right_total_count = path_sum(root.right, target_sum)
  count + left_total_count + right_total_count
end

def count_path_sum_from_node(node, sum, target_sum)
  return 0 if node.nil?

  sum += node.val

  if sum == target_sum
    return 1
  end

  if node.left.nil? && node.right.nil?
    # ここにきている時点で、葉を足したけど、targetを満たさなかったなことは確定している
    return 0
  end

  left_path_sum_count = count_path_sum_from_node(node.left, sum, target_sum)
  right_path_sum_count = count_path_sum_from_node(node.right, sum, target_sum)

  left_path_sum_count + right_path_sum_count
end
