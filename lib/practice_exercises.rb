
# Time Complexity: O(n) becuase the it depends on the array.length
# Space Complexity: O(n) because we created new array
def is_palindrome(string)
  array = string.chars
  orginal_char_array = array.select do |char|
    /[A-Za-z]/.match char
  end
  
  char_array = array.select do |char|
    /[A-Za-z]/.match char
  end
  length = char_array.length
  first_index = 0
  last_index = length -1
  while first_index < last_index
    temp = char_array[first_index]
    char_array[first_index] = char_array[last_index]
    char_array[last_index] = temp
    first_index += 1
    last_index -= 1
  end
  
  if char_array.join.upcase == orginal_char_array.join.upcase
    return true
  else
    return false
  end
end



# Time Complexity: O(n) depends on min.length
# Space Complexity: O(1) no new array created

def longest_prefix(strings)
  return "" if strings.empty? 
  index = 0
  min = strings.min_by{|s| s.length} # find the shortest string
  longest_prefix = ""
    while index < min.length # keep running based on the length of the sortest the string 
      strings.each do |string|
          if min[index] != string[index] # if the it's not equal, return the ""
            return longest_prefix
          end
        end
        longest_prefix += min[index]
        index +=1
    end        
  return longest_prefix
end



