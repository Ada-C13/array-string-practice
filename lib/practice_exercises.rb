
# Time Complexity: O(n) 
# Space Complexity: O(1) constant
def is_palindrome(string)

  string = string.downcase
  string = string.gsub(/[\s,:]/ ,"")
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



# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  return "" if strings.length == 0
  longest_prefix = ""
  first_string = strings[0]
  first_string.each_char.with_index do |char, index| # go through the first string in the string array
    common_letters = 1
    strings.each do |string|
      if char != string[index]
        common_letters = 0
      end
    end
    if common_letters == 1
      longest_prefix << char
    elsif common_letters == 0
      break
    end
  end 
  return longest_prefix
end













  
 


