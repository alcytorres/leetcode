# 125. Valid Palindrome
https://leetcode.com/problems/valid-palindrome/description/




def is_palindrome(s)
  # Convert all letters to lowercase
  normalized_str = s.downcase

  # Remove all non-alphanumeric characters
  normalized_str.gsub!(/[^a-z0-9]/, "")

  # Check if the normalized string is the same when reversed
  normalized_str == normalized_str.reverse
end

# Example usage:
puts is_palindrome("A man, a plan, a canal: Panama")  # => true
puts is_palindrome("race a car")                      # => false
puts is_palindrome(" ")                               # => true





# Solution
def is_palindrome(s)
  # Convert all letters to lowercase
  normalized_str = s.downcase

  # Remove all non-alphanumeric characters
  normalized_str.gsub!(/[^a-z0-9]/, "")

  # Check if the normalized string is the same when reversed
  normalized_str == normalized_str.reverse
end

# Example usage:
puts is_palindrome("A man, a plan, a canal: Panama")  # => true
puts is_palindrome("race a car")                      # => false
puts is_palindrome(" ")                               # => true
