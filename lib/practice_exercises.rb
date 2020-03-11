
# Time Complexity: O(n), where n is the number of characters in the string
# Space Complexity: O(1)
def is_palindrome(string)

  # Empty string as valid palindrome, but not sure about nil...
  if string == ""
    return true
  elsif string == nil
    return false
  end

  regex = /[^a-z0-9]+/i
  extract = string.gsub(regex, "").downcase

  # find middle index of the string, add 1 for odd lengths
  mid = (extract.length + 1) / 2

  i = 0
  while i < mid
    if extract[i] != extract[0-(i+1)]
      return false
    end
    i += 1
  end

  return true
end

# Time Complexity: O(m * n), where m is the number of elements in the array and n is the length of the shortest string in the array
# Space Complexity: O(n), where n is the number of characters in the smallest string in the array
def longest_prefix(strings)
  # Return an empty string "" if no common prefix

  # shortest string in array
  prefix = strings.min_by(&:length)

  for string in strings
    for j in 0...prefix.length
      if prefix[j] != string[j]
        # update prefix from start, up until j (not including)
        prefix = prefix.slice(0, j)
        break
      end
    end
  end

  return prefix
end