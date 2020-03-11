
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  first_index = 0
  last_index = string.length - 1
  palindrome_word = string

	while first_index < last_index
		temp = string[first_index]
		string[first_index] = string[last_index]
		string[last_index] = temp
		first_index += 1
		last_index -= 1
  end
  
  return palindrome_word == string
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

