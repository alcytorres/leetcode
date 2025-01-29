# Maximum Average Subarray I
# https://leetcode.com/problems/maximum-average-subarray-i/description/



def find_max_average(nums, k)
  # Calculate the sum of the first 'k' elements as our initial window sum
  current_sum = nums[0...k].sum

  # Set max_sum to the sum of the initial window
  max_sum = current_sum

  # Slide the window from index k onward to the end of the array
  (k...nums.size).each do |i|
    # Subtract the element that's leaving the window (nums[i-k])
    # and add the element that's entering the window (nums[i])
    current_sum += nums[i] - nums[i - k]

    # Update max_sum if we've found a larger window sum
    max_sum = [max_sum, current_sum].max
  end

  # The maximum average is the best sum found divided by k
  max_sum.to_f / k
end

# Example usage:
nums1 = [1,12,-5,-6,50,3]
k1 = 4
puts find_max_average(nums1, k1)  # => 12.75

nums2 = [5]
k2 = 1
puts find_max_average(nums2, k2)  # => 5.0





# Solution
def find_max_average(nums, k)
  # Calculate the sum of the first 'k' elements as our initial window sum
  current_sum = nums[0...k].sum

  # Set max_sum to the sum of the initial window
  max_sum = current_sum

  # Slide the window from index k onward to the end of the array
  (k...nums.size).each do |i|
    # Subtract the element that's leaving the window (nums[i-k])
    # and add the element that's entering the window (nums[i])
    current_sum += nums[i] - nums[i - k]

    # Update max_sum if we've found a larger window sum
    max_sum = [max_sum, current_sum].max
  end

  # The maximum average is the best sum found divided by k
  max_sum.to_f / k
end

# Example usage:
nums1 = [1,12,-5,-6,50,3]
k1 = 4
puts find_max_average(nums1, k1)  # => 12.75

nums2 = [5]
k2 = 1
puts find_max_average(nums2, k2)  # => 5.0
