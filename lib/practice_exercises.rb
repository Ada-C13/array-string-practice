
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
#examples: re-, sub-, post-, auto-, semi-
#looking for longest prefix 
#input "strings"
#return longest prefix
def longest_prefix(strings)
  longest_prefix = strings[0]
  strings.each do |string|
    letters = 0
    longest_prefix.length.times do
      if longest_prefix[letters] == string[letters]
        letters += 1
      else 
        longest_prefix = longest_prefix.slice(0, letters) #slice returns based on array index: https://www.geeksforgeeks.org/ruby-array-slice-function/
        break
      end #if/else
    end #second do
  end #first d0
end #def


