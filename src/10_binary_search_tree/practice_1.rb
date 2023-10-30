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
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
  # 2分探索木から再起的にノードを探索する場合
  return nil if root.nil?

  current_val = root.val
  result_node = nil

  if current_val == val
    result_node = root
  elsif val > current_val
    # データ構造が2分探索木なので、current_valがvalより小さいってことは、
    # 右を探索しに行った方が良い
    result_node = search_bst(root.right, val)
  elsif val < current_val
    result_node = search_bst(root.left, val)
  end

  result_node

  # # 2分探索木からwhileでノードを探索する場合
  # # この2分探索木の問題の場合、whileのがシンプルに探索できるな
  # while root
  #   break if root.val == val

  #   root = val > root.val ? root.right : root.left
  # end
  # root
end
