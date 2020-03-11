
# Time Complexity: O(n)
# Space Complexity: 0(1)

#determine if string is a palindrome
#input "string"
#return true if palindrome
#return false if not

def is_palindrome(aString)
  return false if aString == nil
  #positive side = a = 0
  #negative side = y = -1
  temp_word = aString.gsub(/(\W|\d)/, "").downcase

  i = 0
  a = -1
  word = temp_word.chars
  while i < (word.length / 2)
  # check chars are the same
  # if same, move to next set of chars
  # if different, return false 
  # when processed all chars and still haven't found a difference, return true
    if word[i] == word[a]
      a -= 1
      i += 1
    else
      return false
    end
  end
  return true
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

  shortest_string = strings.min(){|a, b| a.length <=> b.length}.chars

  i = 0
  while i < shortest_string.length
    letter = shortest_string[i]
    strings.each do |string|
      if letter != string.chars[i]
        return strings_in_common
      end
    end
    strings_in_common += letter
    i += 1
  end
  return strings_in_common
end 

