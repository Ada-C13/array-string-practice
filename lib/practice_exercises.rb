
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  word_compare = ""
  regex_string = ""
  i = 0 

  # string = [racecar1]
  while i < string.length  do 
    if string[-(i + 1)][/[a-zA-Z0-9]/]
      word_compare += string[-(i + 1)].downcase 
    end  
    if string[i][/[a-zA-Z0-9]/]
      regex_string += string[i].downcase
    end
    i += 1 
  end
  
  return word_compare == regex_string
    
end

# Time Complexity: O(n)
# Space Complexity: O(n)
def longest_prefix(strings)
  strings.sort! 

  if strings.empty? || strings[0][0] != strings[-1][0]
    return ""
  elsif strings.length == 1 || strings[0] == strings[-1]
    return strings[0]
  end 
  

  first_s = strings[0]
  last_s = strings[-1]

  max_length = last_s.length
  if first_s.length > last_s.length 
    max_length = first_s.length
  end 

  long_prefix = ""
  i = 0 

  while first_s[i] == last_s[i] && i < max_length
    long_prefix += first_s[i]
    i += 1
  end 
  return long_prefix
    
end
