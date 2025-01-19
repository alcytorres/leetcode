# 26. Remove Duplicates from Sorted Array
https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/


def remove_duplicates(nums)
  # If the array has 0 or 1 element, it is already without duplicates
  return nums.size if nums.size < 2

  # 'j' will track the position of the next unique element to place
  j = 1

  # Loop through the array starting from index 1
  (1...nums.size).each do |i|
    # Compare the current element nums[i] with the previous one nums[i-1]
    if nums[i] != nums[i - 1]
      # If they differ, it means we've found a new unique element
      # Place it in nums[j] and move j forward
      nums[j] = nums[i]
      j += 1
    end
  end

  # 'j' now represents the count of unique elements
  j
end

# Example usage:
nums1 = [1,1,2]
k1 = remove_duplicates(nums1)
# k1 => 2, and nums1 => [1,2,...]

nums2 = [0,0,1,1,1,2,2,3,3,4]
k2 = remove_duplicates(nums2)
# k2 => 5, and nums2 => [0,1,2,3,4,...]





# Solution
def remove_duplicates(nums)
  # If the array has 0 or 1 element, it is already without duplicates
  return nums.size if nums.size < 2

  # 'j' will track the position of the next unique element to place
  j = 1

  # Loop through the array starting from index 1
  (1...nums.size).each do |i|
    # Compare the current element nums[i] with the previous one nums[i-1]
    if nums[i] != nums[i - 1]
      # If they differ, it means we've found a new unique element
      # Place it in nums[j] and move j forward
      nums[j] = nums[i]
      j += 1
    end
  end

  # 'j' now represents the count of unique elements
  j
end

# Example usage:
nums1 = [1,1,2]
k1 = remove_duplicates(nums1)
# k1 => 2, and nums1 => [1,2,...]

nums2 = [0,0,1,1,1,2,2,3,3,4]
k2 = remove_duplicates(nums2)
# k2 => 5, and nums2 => [0,1,2,3,4,...]
