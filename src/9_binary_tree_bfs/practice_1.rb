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
# @return {Integer[]}
def right_side_view(root)
  most_right_values = []

  queue = [root]

  until queue.empty?
    level_length = queue.length

    # これを書くことで、レイヤーごとに処理することができる
    (0..level_length - 1).each do |i|
      node = queue.shift
      break if node.nil?

      queue.push(node.left) if node.left
      queue.push(node.right) if node.right

      most_right_values.push(node.val) if i == level_length - 1
    end
  end

  most_right_values
end
