
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



# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)


end
