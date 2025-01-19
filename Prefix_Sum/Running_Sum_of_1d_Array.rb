# 1480. Running Sum of 1d Array
# https://leetcode.com/problems/running-sum-of-1d-array/description/



def running_sum(nums)
  # Initialize a variable to keep track of the cumulative sum
  sum = 0

  # Create a new array to store the running sums
  result = []

  # Iterate over each number in nums
  nums.each do |num|
    # Add the current number to the running sum
    sum += num

    # Append the updated sum to the result array
    result << sum
  end

  # Return the array of running sums
  result
end

# Example usage:
puts running_sum([1,2,3,4]).inspect  # => [1, 3, 6, 10]
puts running_sum([1,1,1,1,1]).inspect  # => [1, 2, 3, 4, 5]
puts running_sum([3,1,2,10,1]).inspect # => [3, 4, 6, 16, 17]







# Solution
def running_sum(nums)
  # Initialize a variable to keep track of the cumulative sum
  sum = 0

  # Create a new array to store the running sums
  result = []

  # Iterate over each number in nums
  nums.each do |num|
    # Add the current number to the running sum
    sum += num

    # Append the updated sum to the result array
    result << sum
  end

  # Return the array of running sums
  result
end

# Example usage:
puts running_sum([1,2,3,4]).inspect  # => [1, 3, 6, 10]
puts running_sum([1,1,1,1,1]).inspect  # => [1, 2, 3, 4, 5]
puts running_sum([3,1,2,10,1]).inspect # => [3, 4, 6, 16, 17]
