# Explanation of Ranking in Short:
# https://chatgpt.com/c/679a7b9d-75a0-8011-8282-e0e55eed8683

# While & Two-Pointer: Foundation for multiple patterns (two pointers, binary search).
# String Manipulation: Essential for string-based problems like valid palindromes.
# Enumerable & Prefix Sum: Key for quick accumulations (running sums).
# Array Slicing & Sliding Window: Core for subarray-based solutions.
# Manual Binary Search: Classic searching technique.
# Sorting & Hash Counting: Used in frequency-based or top K problems.
# BFS with Queues: Breadth-first approaches in trees/graphs.
# DFS (Recursion): Depth-first traversal in trees/graphs.
# Backtracking: Generating all possible solutions (combinations, permutations).


# Below are nine essential Ruby syntax features/concepts ranked in order of importance
# for solving common LeetCode patterns. Each section includes:
# 1) What it does
# 2) Why use it (how it helps with algorithmic patterns)
# 3) Syntax
# 4) A small example problem demonstrating usage
#
# ------------------------------------------------------------------------------
# RANKING & JUSTIFICATION
#
# 1. While Loops & Two-Pointer Structure
#    - Critical for "Two Pointers," "Binary Search," and "Modified Binary Search."
#    - Often used in patterns like "Remove Duplicates," "Valid Palindrome," etc.
#
# 2. String Manipulation (.downcase, .gsub, .reverse, etc.)
#    - Essential for string-based checks (e.g., "Valid Palindrome").
#
# 3. Enumerable & Prefix Sum (.each, .map, .inject)
#    - Key for "Prefix Sum" computations and quick array transformations.
#
# 4. Array Slicing & Sliding Windows (arr[ start..end ])
#    - Important for "Sliding Window" techniques (e.g., "Maximum Average Subarray").
#
# 5. Manual Binary Search Pattern
#    - Classic approach to "Binary Search" and "Modified Binary Search" problems.
#
# 6. Sorting & Hash Counting (.sort_by, .keys, .values)
#    - Common for "Top K Elements" (e.g., "Top K Frequent Elements").
#
# 7. Using Queues for BFS
#    - BFS is used for tree/graph problems (e.g., "Maximum Depth of Binary Tree").
#
# 8. Recursion for DFS
#    - Depth-first traversal in trees/graphs.
#
# 9. Recursion & Backtracking
#    - Essential for generating all combinations/permutations (backtracking).
#
# ------------------------------------------------------------------------------

###############################################################################
# 1) WHILE LOOPS & TWO-POINTER STRUCTURE
###############################################################################
# What it does: Repeatedly executes a block of code while a certain condition is true.
# Why use it: Two-pointer patterns require iterative movement of two indices
#             (left & right) based on a condition until the pointers converge.

# Syntax:
# left = 0
# right = arr.length - 1
# while left < right
#   # ... do some logic with arr[left] and arr[right] ...
#   left += 1
#   right -= 1
# end

#------------------------------------------------------------------------------
# Problem Example: Remove Duplicates from Sorted Array (Two Pointers)
def remove_duplicates(nums)
  return 0 if nums.empty?

  left = 0
  (1...nums.size).each do |right|
    if nums[right] != nums[left]
      left += 1
      nums[left] = nums[right]
    end
  end
  left + 1
end

arr1 = [1,1,2,2,3]
p remove_duplicates(arr1)
# Output: 3 (the length of the array with unique elements in place)
# The array is partially modified in-place (e.g., [1,2,3,2,3]).

# ------------------------------------------------------------------------------

###############################################################################
# 2) STRING MANIPULATION (.downcase, .gsub, .reverse, etc.)
###############################################################################
# What it does: Provides methods to transform strings (remove unwanted chars,
#               normalize cases, reverse, etc.).
# Why use it: Commonly used in "Valid Palindrome" or any string parsing problem.

# Syntax:
# str.downcase    # convert to lowercase
# str.gsub(/[^a-z0-9]/, "")  # remove non-alphanumeric characters
# str.reverse

#------------------------------------------------------------------------------
# Problem Example: Valid Palindrome
def valid_palindrome(str)
  s = str.downcase.gsub(/[^a-z0-9]/, "")
  s == s.reverse
end

p valid_palindrome("A man, a plan, a canal: Panama")
# Output: true

p valid_palindrome("race a car")
# Output: false

# ------------------------------------------------------------------------------

###############################################################################
# 3) ENUMERABLE & PREFIX SUM (.each, .map, .inject)
###############################################################################
# What it does:
#  - .each     : iterate over elements
#  - .map      : transform each element
#  - .inject   : accumulate a result (handy for prefix sums)
# Why use it: Helps quickly compute sums or create running accumulations for
#             "Prefix Sum" pattern (e.g., "Running Sum of 1d Array").

# Syntax:
# arr.each { |elem| ... }
# arr.map { |elem| elem * 2 }
# arr.inject(0) { |sum, elem| sum + elem }

#------------------------------------------------------------------------------
# Problem Example: Running Sum of 1d Array (Prefix Sum)
def running_sum(nums)
  sum = 0
  nums.map { |n| sum += n }
end

p running_sum([1,2,3,4])
# Output: [1,3,6,10]

# ------------------------------------------------------------------------------

###############################################################################
# 4) ARRAY SLICING & SLIDING WINDOW (arr[start..end])
###############################################################################
# What it does: Allows you to extract subarrays using range syntax.
# Why use it: Essential in "Sliding Window" to compute sums or averages over
#             subarrays (e.g., "Maximum Average Subarray I").

# Syntax:
# subarray = arr[start..end]  # includes end index

#------------------------------------------------------------------------------
# Problem Example: Maximum Average Subarray I
def find_max_average(nums, k)
  # initial window
  current_sum = nums[0...k].sum
  max_sum = current_sum

  (k...nums.size).each do |i|
    current_sum += nums[i] - nums[i - k]
    max_sum = [max_sum, current_sum].max
  end

  max_sum.to_f / k
end

p find_max_average([1,12,-5,-6,50,3], 4)
# Expected Output: 12.75 (the max average subarray is [12, -5, -6, 50])

# ------------------------------------------------------------------------------

###############################################################################
# 5) MANUAL BINARY SEARCH PATTERN
###############################################################################
# What it does: Searches for a target value in a sorted array by repeatedly
#               dividing the search interval in half.
# Why use it: Fundamental for "Binary Search" and "Modified Binary Search."

# Syntax:
# left = 0
# right = arr.size - 1
# while left <= right
#   mid = (left + right) / 2
#   if arr[mid] == target
#     return mid
#   elsif arr[mid] < target
#     left = mid + 1
#   else
#     right = mid - 1
#   end
# end
# return -1

#------------------------------------------------------------------------------
# Problem Example: Binary Search for a Target
def binary_search(arr, target)
  left = 0
  right = arr.size - 1

  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1
end

p binary_search([1,2,4,6,7,9,11], 7)
# Output: 4 (index of value 7 in the array)

# ------------------------------------------------------------------------------

###############################################################################
# 6) SORTING & HASH COUNTING (.sort_by, .keys, .values)
###############################################################################
# What it does:
#   - .sort_by : sorts an array according to custom logic
#   - .keys    : returns hash keys
#   - .values  : returns hash values
# Why use it:
#   - Often used in "Top K" problems to find frequent elements.
#   - Counting elements with a Hash, then sorting by frequency.

# Syntax:
# hash = Hash.new(0)
# arr.each { |num| hash[num] += 1 }
# sorted = hash.sort_by { |k, v| -v }  # sort descending by frequency

#------------------------------------------------------------------------------
# Problem Example: Top K Frequent Elements
def top_k_frequent(nums, k)
  freq = Hash.new(0)
  nums.each { |num| freq[num] += 1 }

  # Sort by frequency (descending) and take the top k
  freq.sort_by { |_num, count| -count }.map(&:first).take(k)
end

p top_k_frequent([1,1,1,2,2,3], 2)
# Output: [1, 2] (the two most frequent elements)

# ------------------------------------------------------------------------------

###############################################################################
# 7) USING QUEUES FOR BFS (e.g., in Binary Tree)
###############################################################################
# What it does: Breadth-first traversal uses a queue to process nodes level-by-level.
# Why use it: BFS is crucial for many tree/graph problems (e.g.,
#             "Maximum Depth of Binary Tree," "Level Order Traversal," etc.)

# Syntax (using Array as a queue in Ruby):
# queue = [root]
# until queue.empty?
#   node = queue.shift  # pop from front
#   # process node
#   queue.push(node.left) if node.left
#   queue.push(node.right) if node.right
# end

#------------------------------------------------------------------------------
# Problem Example: Maximum Depth of Binary Tree
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def max_depth_bfs(root)
  return 0 if root.nil?

  depth = 0
  queue = [root]

  until queue.empty?
    level_size = queue.size
    depth += 1

    level_size.times do
      node = queue.shift
      queue << node.left if node.left
      queue << node.right if node.right
    end
  end

  depth
end

# Construct a simple tree:
#       3
#      / \
#     9  20
#       /  \
#      15   7
tree_root = TreeNode.new(3)
tree_root.left = TreeNode.new(9)
tree_root.right = TreeNode.new(20)
tree_root.right.left = TreeNode.new(15)
tree_root.right.right = TreeNode.new(7)

p max_depth_bfs(tree_root)
# Output: 3

# ------------------------------------------------------------------------------

###############################################################################
# 8) RECURSION FOR DFS
###############################################################################
# What it does: Depth-first search explores a branch fully before backtracking.
# Why use it: Used to traverse trees/graphs in a depth-first manner.
#             Also a foundation for recursion-based tree solutions.

# Syntax (typical):
# def dfs(node)
#   return if node.nil?
#   dfs(node.left)
#   dfs(node.right)
# end

#------------------------------------------------------------------------------
# Problem Example: Recursive DFS to compute max depth
def max_depth_dfs(root)
  return 0 unless root
  left_depth = max_depth_dfs(root.left)
  right_depth = max_depth_dfs(root.right)
  [left_depth, right_depth].max + 1
end

p max_depth_dfs(tree_root)
# Output: 3

# ------------------------------------------------------------------------------

###############################################################################
# 9) RECURSION & BACKTRACKING
###############################################################################
# What it does: Explores all possibilities by building partial solutions
#               and then undoing ("backtracking") to try different paths.
# Why use it: Essential for generating permutations, combinations, or
#             solving constraint-based problems (e.g., "N-Queens").

# Syntax (typical pattern):
# results = []
# def backtrack(path, options)
#   if some_condition
#     results << path.clone
#     return
#   end
#   options.each do |option|
#     path << option
#     backtrack(path, remaining_options)
#     path.pop
#   end
# end

#------------------------------------------------------------------------------
# Problem Example: Generate All Subsets (Backtracking)
def subsets(nums)
  result = []

  def backtrack(start, current, nums, result)
    # Add the current subset to the result
    result << current.clone

    (start...nums.size).each do |i|
      current << nums[i]
      backtrack(i + 1, current, nums, result)
      current.pop  # remove last element to backtrack
    end
  end

  backtrack(0, [], nums, result)
  result
end

p subsets([1,2,3])
# Output: [
#   [],
#   [1], [1, 2], [1, 2, 3],
#   [1, 3],
#   [2], [2, 3],
#   [3]
# ]

# ------------------------------------------------------------------------------

###############################################################################
# BONUS EXAMPLE: Hash#keys
###############################################################################
# This was given in the prompt example, so including it for completeness.

# What it does: Returns an array of all the keys in a hash.
# Why use it: Quickly iterate over or verify the existence of specific keys.

# Syntax:
# hash.keys

#------------------------------------------------------------------------------
# Problem: Write a function that returns an array of all keys in a given hash.
def all_keys(hash)
  hash.keys
end

fruits = { apple: 1, banana: 2, cherry: 3 }
p all_keys(fruits)
# Output: [:apple, :banana, :cherry]
