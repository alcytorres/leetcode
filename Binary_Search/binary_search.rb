# Binary Search
# https://leetcode.com/problems/binary-search/


def search(nums, target)
  left = 0
  right = nums.size - 1

  while left <= right
    mid = (left + right) / 2

    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1  # If not found, return -1
end

# Example usage:
nums1 = [-1, 0, 3, 5, 9, 12]
target1 = 9
puts search(nums1, target1)  # => 4

nums2 = [-1, 0, 3, 5, 9, 12]
target2 = 2
puts search(nums2, target2)  # => -1





# Solution
def search(nums, target)
  # Set the starting boundary of the search to the first index
  left = 0
  # Set the ending boundary of the search to the last index
  right = nums.size - 1

  # Continue while the search range is valid
  while left <= right
    # Calculate the midpoint between left and right
    mid = (left + right) / 2

    # Check if the target is at the midpoint
    if nums[mid] == target
      return mid   # Return the index of the found target

    # If the target is greater, ignore the left half by moving 'left'
    elsif nums[mid] < target
      left = mid + 1

    # Otherwise, ignore the right half by moving 'right'
    else
      right = mid - 1
    end
  end

  -1  # If the loop finishes, the target is not in the array
end

# Example usage:
nums1 = [-1, 0, 3, 5, 9, 12]
target1 = 9
puts search(nums1, target1)  # => 4

nums2 = [-1, 0, 3, 5, 9, 12]
target2 = 2
puts search(nums2, target2)  # => -1
