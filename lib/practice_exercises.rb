
# Time Complexity: O(n) because the while how long the loop runs, depends on the lenght of the string
# Space Complexity: 0(1)  
def is_palindrome(string)
  # raise NotImplementedError, "Not implemented yet"
  string = string.downcase.gsub(/[^a-z^A-Z]/,"")

  i = 0
  j = string.length - 1
  while i < j
    if string[i] == string[j]
      i += 1
      j -= 1
    else
      return false
    end
end
return true
end

# Time Complexity: 0(n) because of the length of the string??? <-- this one is questionable. 
# Space Complexity: 0(1) because no array is being made
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"

  if strings.first.length == 0
    return strings
  end

  prefix = ""
  i  = 0

  min = strings.min_by{|s| s.length}
    while i < min.length 
      strings.each do |string|
          if min[i] != string[i] 
            return prefix
          end
        end
        prefix += min[i]
        i +=1
    end        
  return prefix
  end