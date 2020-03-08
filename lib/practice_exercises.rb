#!/usr/bin/ruby
# 
# Title  : Array Strings - Ada Cohort 13 - Space
# Author : Suely Barreto
# Date   : February 2020

# Given a string, determine if it is a palindrome considering only alphanumeric characters and ignoring cases
# Note: For the purpose of this problem, we define empty string as valid palindrome.

# Time complexity : O(n)
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

# Time Complexity : O(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  return "" if strings.length == 0
  # min, max = strings.minmax
  min = strings[0]
  max = strings[0]
  sindex = 1
  while sindex < strings.length
    min = strings[sindex] if strings[sindex] < min
    max = strings[sindex] if strings[sindex] > max
    sindex += 1
  end

  cindex = 0
  while cindex < min.length
    break if min[cindex] != max[cindex]
    cindex += 1
  end
  return min[0...cindex]
  
end