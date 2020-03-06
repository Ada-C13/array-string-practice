#!/usr/bin/ruby
# 

# Given a string, determine if it is a palindrome considering only alphanumeric characters and ignoring cases
# Note: For the purpose of this problem, we define empty string as valid palindrome.

# Time complexity: O(n)
# Space complexity: O(1)
def is_palindrome(string)
  string = string.downcase.gsub(/[^a-z]/i, '')

  i = 0
  j = string.length - 1
  while i < j do
    return false if string[i] != string[j]
    i += 1
    j -= 1
  end
  return true

end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  return "" if strings.length == 0
  first = strings.min
  last  = strings.max
  index = 0
  while index < first.length
    break if first[index] != last[index]
    index += 1
  end
  return first[0...index]
end
