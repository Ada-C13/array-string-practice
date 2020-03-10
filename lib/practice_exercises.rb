
# Time Complexity: O(n) - as string increases in length, time increases
# Space Complexity: O(1)
def is_palindrome(string)
  split_string = string.downcase.gsub(/[\,\s:]/, '')
  first = 0
  last = (split_string.length - 1)
  
  if split_string.empty? || split_string.length == 1
    return true
  end
  
  while first < last
    if split_string[first] != split_string[last]
      return false
    else 
      first += 1
      last -= 1
    end
    
    return true
  end
  
end


# Time Complexity: O(n) - n is the length of the shortest word in the array
# Space Complexity: O(1)
def longest_prefix(strings)
  length = strings.min_by { |string| string.length }.length
  strings = strings.sort!
  substring = ""
  
  i = 0
  while i <= length
    if strings[0][0..i] == strings[-1][0..i]
      substring = strings[0][0..i]
    end
    i += 1
  end
  
  return substring
end

