# 104. Maximum Depth of Binary Tree
# https://leetcode.com/problems/maximum-depth-of-binary-tree/description/


# Definition for a binary tree node (LeetCode typically provides this).
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def max_depth(root)
  # Base case: If the current node is nil, the depth is 0
  return 0 if root.nil?

  # Recursively find the depth of the left and right subtrees
  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)

  # The maximum depth at this node is 1 plus the maximum of its two subtrees
  [left_depth, right_depth].max + 1
end

# ---------------------------
# Example Usage (pseudocode):
root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20, TreeNode.new(15), TreeNode.new(7))
puts max_depth(root)  # => 3
# ---------------------------




# Solution
# Definition for a binary tree node (LeetCode typically provides this).
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def max_depth(root)
  # Base case: If the current node is nil, the depth is 0
  return 0 if root.nil?

  # Recursively find the depth of the left and right subtrees
  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)

  # The maximum depth at this node is 1 plus the maximum of its two subtrees
  [left_depth, right_depth].max + 1
end

# ---------------------------
# Example Usage (pseudocode):
root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20, TreeNode.new(15), TreeNode.new(7))
puts max_depth(root)  # => 3
# ---------------------------
