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
# @param {Integer} key
# @return {TreeNode}
def find_min_node(node)
  while node.left
    node = node.left
  end

  node
end

# 特定ノード削除後のルートノードを返してくれる
def delete_node(root, key)
  return nil if root.nil?

  if key == root.val
    # 子を持たない場合
    if root.left.nil? && root.right.nil?
      root = nil

    # 子を一つ持つ場合
    # 上のif文を書かないと、この条件文に子を持たない場合が内包される
    elsif root.left.nil? || root.right.nil?
      root = root.left || root.right

    # 子を2つ持つ場合
    # 右ツリーが持つ最小値をrootのvalueにする
    else
      min_right_node = find_min_node(root.right)
      root.val = min_right_node.val
      root.right = delete_node(root.right, min_right_node.val)
    end
  elsif key > root.val
    root.right = delete_node(root.right, key)
  elsif key < root.val
    root.left = delete_node(root.left, key)
  end

  root
end
