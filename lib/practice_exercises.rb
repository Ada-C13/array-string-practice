
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  string.gsub!(/[^a-zA-Z0-9]/, "")
  first_index = 0
  last_index = string.length - 1

	while first_index < last_index
    return false if string[first_index].downcase != string[last_index].downcase
    temp = string[first_index]
		string[first_index] = string[last_index]
		string[last_index] = temp
		first_index += 1
    last_index -= 1
  end
  
  return true 
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

