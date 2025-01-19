# Two Sum
https://leetcode.com/problems/two-sum/description/



def two_sum(nums, target)
  # Create a Hash to store each number's value and its index.
  num_to_index = {}

  # Iterate over each number along with its index.
  nums.each_with_index do |num, index|
    # Calculate the complement.
    complement = target - num

    # Check if the complement is already in the Hash.
    if num_to_index.key?(complement)
      # Return indices if found.
      return [num_to_index[complement], index]
    end

    # Store current number and index in the Hash.
    num_to_index[num] = index
  end
end

# Example usage:
nums = [2, 7, 11, 15]
target = 9
p two_sum(nums, target)  # => [0, 1]





# Solution
def two_sum(nums, target)
  # Create a Hash to store each number's value and its index.
  num_to_index = {}

  # Iterate over each number along with its index.
  nums.each_with_index do |num, index|
    # Calculate the complement.
    complement = target - num

    # Check if the complement is already in the Hash.
    if num_to_index.key?(complement)
      # Return indices if found.
      return [num_to_index[complement], index]
    end

    # Store current number and index in the Hash.
    num_to_index[num] = index
  end
end

# Example usage:
nums = [2, 7, 11, 15]
target = 9
p two_sum(nums, target)  # => [0, 1]

