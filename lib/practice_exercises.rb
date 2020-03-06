
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  return true if string.empty? || string.length == 1
  string.downcase!
  split_string = string.split("")
  char_string = split_string.select{ |char| /[a-z]/.match?(char) }

  half = char_string.length / 2
  half.times do |i|
    return false if char_string[i] != char_string[(char_string.length - 1) - i]
  end

  return true
  # raise NotImplementedError, "Not implemented yet"
end

# Time Complexity: O(n^2)
# Space Complexity: 0(1)
def longest_prefix(strings)
  longest_pre = ""
  
  strings[0].length.times do |i|
    current_letter = strings[0][i]
    strings.each do |word|
      return longest_pre if current_letter != word[i]
    end
    longest_pre += current_letter
  end

  return longest_pre
  # raise NotImplementedError, "Not implemented yet"
end