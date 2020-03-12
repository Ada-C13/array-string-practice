
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

# Time Complexity: O(n)
# Space Complexity: O(n) (Not sure on this; I have yet to find an explanation on Big O that resonates well.)
def longest_prefix(strings)

 # Assign relevant variables
 winning_ticket = ""
 i = 0 
 fastest_furthest = strings[0][i]

 # Account for non-nil values and return method result 
  while fastest_furthest != nil
    strings.each do |string|
      unless string[i] == fastest_furthest
        return winning_ticket
      end 
    end 
    winning_ticket += fastest_furthest
    i += 1
    fastest_furthest = strings[0][i]
  end
  return winning_ticket
end