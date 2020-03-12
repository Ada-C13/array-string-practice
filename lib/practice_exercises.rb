
# Time Complexity: O(n), the loop requires n operations depending on the length of the string.
# Space complexity: O(1), the number of varibles tracked does not change regardless of input size.
def is_palindrome(string)
  string.gsub!(/[^a-zA-Z0-9]/, "")
  first_index = 0
  last_index = string.length - 1

	while first_index < last_index
    return false if string[first_index].downcase != string[last_index].downcase
		first_index += 1
    last_index -= 1
  end
  
  return true 
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  prefix = ""

  return prefix
end

