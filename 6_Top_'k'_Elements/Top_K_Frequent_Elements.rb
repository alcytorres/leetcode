# 347. Top K Frequent Elements
# https://leetcode.com/problems/top-k-frequent-elements/




def top_k_frequent(nums, k)
  # 1. Count frequencies of each element in nums
  frequency_map = Hash.new(0)
  nums.each do |num|
    frequency_map[num] += 1
  end

  # 2. Sort the unique elements by their frequencies in descending order
  #    Convert the hash to an array of [element, count] pairs, sort by count descending
  sorted_by_frequency = frequency_map.sort_by { |element, count| -count }

  # 3. Take the first k pairs and extract only the element part
  sorted_by_frequency.first(k).map { |element, _count| element }
end

# Example usage:
puts top_k_frequent([1,1,1,2,2,3], 2).inspect  # => [1, 2]
puts top_k_frequent([1], 1).inspect           # => [1]





# Solution
def top_k_frequent(nums, k)
  # 1. Count frequencies of each element in nums
  frequency_map = Hash.new(0)
  nums.each do |num|
    frequency_map[num] += 1
  end

  # 2. Sort the unique elements by their frequencies in descending order
  #    Convert the hash to an array of [element, count] pairs, sort by count descending
  sorted_by_frequency = frequency_map.sort_by { |element, count| -count }

  # 3. Take the first k pairs and extract only the element part
  sorted_by_frequency.first(k).map { |element, _count| element }
end

# Example usage:
puts top_k_frequent([1,1,1,2,2,3], 2).inspect  # => [1, 2]
puts top_k_frequent([1], 1).inspect           # => [1]
