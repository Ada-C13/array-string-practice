# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  return true if string == ""

  new_string = ""
  length = string.length
  valid_characters = /\w/

  length.times do |i|
    if string[i].match?(valid_characters)
      new_string += string[i]
    end
  end

  length = new_string.length

  new_string = new_string.downcase

  length.times do |i|
    first = new_string[i]
    last = new_string[length-1]
    if first == last
      length -= 1
      next
    else
      return false
    end
  end

  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

