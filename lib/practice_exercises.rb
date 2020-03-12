
# Time Complexity: O(n)
# Space Complexity: O(1) 
def is_palindrome(string)

  # Declare assessing variables
  string = string.downcase.gsub(/[^0-9a-z]/i, '')
  yarn = string.chars
  start = 0
  finish = yarn.length - 1 

  # Validate 1-letter or empty string arguments
  if yarn.length == 1 || yarn.length == 0
    return true
  end 

  # Account for one-word non-palindrome strings 
  if yarn[start] != yarn[finish]
    return false
  end 

  # Compare interior string values
  while start < finish
    if yarn.include?(yarn[start])
      start += 1
    elsif yarn.include?(yarn[finish])
      finish -= 1
    else
      if yarn[start] != yarn[finish]
        return false
      end 
      start += 1
      finish -= 1
    end 
  end 
  true
end 

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)

  
  raise NotImplementedError, "Not implemented yet"
end