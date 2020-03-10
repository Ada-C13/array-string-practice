
# Time Complexity: O(n)
# Space Complexity: 0(1)

#determine if string is a palindrome
#input "string"
#return true if palindrome
#return false if not

def is_palindrome(aString)
  return false if aString == nil
  a_test = 0
  b_test = aString.length - 1

  while a_test < b_test
    if aString[a_test] == " "
      a_test += 1
    elsif aString[b_test] == " "
      b_test -= 1
    elsif aString[a_test] == aString[b_test]
      j += 1
      k -= 1
    elsif (aString[b_test] != " ") && 
          (aString[b_test] != " ") && 
          (aString[a_test] != aString[b_test])
      return false
    end
  end
  true
end


# Time Complexity: O(nm)
  # n is length of strings
  # m is smallest length
# Space Complexity: O(1)

#Get longest prefix 
#input ["strings"]
#return strings that are in common 
def longest_prefix(strings)
  strings_in_common = ""
  #checking if array is emptyh
  if strings.length == 0
    return strings_in_common
  end

  shortest_string = strings.min
  shortest_string_length = shortest_string.length
  i = 0
  while i < shortest_string_length
    letters = shortest_string_length[i]
    strings.each do |string|
      if letters != string[i]
        return strings_in_common
      end
    end
    strings_in_common += letter
    i += 1
  end
  return strings_in_common
end 



